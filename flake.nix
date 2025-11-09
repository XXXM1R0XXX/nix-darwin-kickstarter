{
  description = "Nix Darwin Kickstarter templates";

  outputs = { self }: {
    templates = {
      minimal = {
        path = ./minimal;
        description = "A minimal nix-darwin configuration";
      };
      rich-demo = {
        path = ./rich-demo;
        description = "A rich demo for nix-darwin configuration";
      };
    };
  };
}