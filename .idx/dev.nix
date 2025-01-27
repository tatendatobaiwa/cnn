{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    # Add Python 3.12.6 to the environment
    pkgs.python312Full

    # Add conda to the environment
    pkgs.python312Packages.conda

    # Add other packages here as needed
    # Example:
    # pkgs.go
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
    # pkgs.python311Packages.pip
  ];

  # Sets environment variables in the workspace
  env = {
    # Example environment variables
    # MY_ENV_VAR = "value";
  };

  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # Example extensions
      # "vscodevim.vim"
    ];

    # Enable previews
    previews = {
      enable = true;
      previews = {
        # Example: Configure a web preview for a Node.js app
        # web = {
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     PORT = "$PORT";
        #   };
        # };
      };
    };

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: Install npm dependencies
        # npm-install = "npm install";
      };

      # Runs when the workspace is (re)started
      onStart = {
        # Example: Start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}