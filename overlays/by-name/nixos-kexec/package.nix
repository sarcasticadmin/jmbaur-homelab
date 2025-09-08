{
  coreutils-full,
  fzf,
  jq,
  argc,
  kexec-tools,
  lib,
  writeArgcShellApplication,
}:

writeArgcShellApplication {
  name = "nixos-kexec";

  runtimeInputs = [
    argc
    coreutils-full
    jq
    fzf
    kexec-tools
  ];

  text = ''
    kexec_jq=${./nixos-kexec.jq}
    ${lib.fileContents ./nixos-kexec.bash}
  '';
}
