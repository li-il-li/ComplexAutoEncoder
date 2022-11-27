with import <nixpkgs> { };

let
  pythonPackages = python39Packages;
in pkgs.mkShell rec {
  name = "ComplexAutoEncoder";
  #venvDir = "./.venv/arcathon-97DNTzDE-py3.9";
  buildInputs = [
    pythonPackages.pandas
    pythonPackages.numpy
    pythonPackages.ipython
    pythonPackages.ipykernel
    pythonPackages.conda

    # MacOS dependencies
    #darwin.apple_sdk.frameworks.IOKit
    darwin.apple_sdk.frameworks.System
    darwin.apple_sdk.frameworks.CoreServices
    darwin.apple_sdk.frameworks.CoreFoundation

    # A Python interpreter
    pythonPackages.python

    # Poetry dependency & package management
    pythonPackages.poetry

    # This execute some shell code to initialize a venv in $venvDir before
    # dropping into the shell
    #pythonPackages.venvShellHook

    # In this particular example, in order to compile any binary extensions they may
    # require, the Python modules listed in the hypothetical requirements.txt need
    # the following packages to be installed locally:
    nixpkgs-fmt
    rnix-lsp
    taglib
    openssl
    git
    libxml2
    libxslt
    libzip
    zlib
    bat
    terraform
    google-cloud-sdk
    nixos-generators
    packer
    #nixops_unstable
  ];

  # runs a startup of shell
  # shellHook = ''
  #   export POETRY_VIRTUALENVS_PATH=$(git rev-parse --show-toplevel)/.venv/
  # '';

}
