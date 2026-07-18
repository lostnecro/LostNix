{ config, pkgs, ... }:

let
  grep = pkgs.gnugrep;
  flatpakCmd = "${pkgs.flatpak}/bin/flatpak";
  
  desiredFlatpaks = [
    "org.onlyoffice.desktopeditors", "app.zen_browser.zen"
  ];
in {
  # Criamos um script que roda seguro em segundo plano
  home.activation.manageFlatpaks = config.lib.dag.entryAfter ["writeBoundary"] ''
    # Rodamos em background para NÃO travar o rebuild do Home Manager
    (
      echo "Iniciando gerenciamento de Flatpaks em segundo plano..."
      
      # 1. Garante o repositório
      ${flatpakCmd} remote-add --user --if-not-exists flathub \
        https://dl.flathub.org/repo/flathub.flatpakrepo

      # 2. Pega os instalados no escopo do usuário
      installedFlatpaks=$(${flatpakCmd} list --user --app --columns=application)

      # 3. Remove os indesejados (Casamento exato de linha com grep -x)
      for installed in $installedFlatpaks; do
        if ! echo "${lib.concatStringsSep "\n" desiredFlatpaks}" | ${grep}/bin/grep -qx "$installed"; then
          echo "Removendo $installed..."
          ${flatpakCmd} uninstall --user -y --noninteractive "$installed"
        fi
      done

      # 4. Instala os desejados
      for app in ${lib.concatStringsSep " " desiredFlatpaks}; do
        ${flatpakCmd} install --user -y flathub "$app"
      done

      # 5. Limpa e atualiza
      ${flatpakCmd} uninstall --user --unused -y
      ${flatpakCmd} update --user -y
    ) &
  '';
}