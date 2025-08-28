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
    alias clangd="clang++ -DDEBUG -std=c++23 main.cpp -o main_debug"
    alias clangr="clang++ -O3 -DNDEBUG -std=c++23 -march=native main.cpp -o main_release"
    echo " ---\ "
    echo " + C++23 development environment"
    echo " + Clang version: $(clang++ --version | head -n1)"
    echo " + To compile: "
    echo " +  - DEBUG:   clangd"
    echo " +  - RELEASE: clangr"
    echo " ---/ "
  '';
}
