{pkgs}:
pkgs.mkShell {
  # Add build dependencies
  packages = with pkgs; [
    # CPP Development
    clang_21
    cmake
    ninja
    pkg-config
    # HFT related packages
    boost
    tbb
    jemalloc
  ];

  # Add environment variables
  env = {};

  # Load custom bash code
  shellHook = ''

  '';
}
