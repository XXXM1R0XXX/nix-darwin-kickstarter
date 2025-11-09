{
  description = "Nix Darwin Kickstarter";

  templates = {
    minimal = {
      path = ./minimal;
      description = "A minimal nix-darwin configuration";
    };
    rich-demo = {
      path = ./rich-demo;
      description = "A rich-demo nix-darwin configuration";
    };
  };

  # To make this flake compatible with older Nix versions
  # See: https://github.com/NixOS/nix/issues/10220
  # And: https://github.com/NixOS/nix/pull/10221
  # And: https://github.com/srid/nix-flake-compat
  outputs = { self }: {
    # A dummy output to make this flake compatible with older Nix versions
    _ = self.templates;
  };
}
