{
  # contents of /etc/passwd and /etc/group are congruent to here
  # disables commands like 'useradd' while false
  users.mutableUsers = false;

  users.users = {
    liam = {
      isNormalUser = true;
      home = "/home/liam";
      password = "Pikachu-0025";
      extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    };
  };
}
