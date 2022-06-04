{
  # contents of /etc/passwd and /etc/group are congruent to here
  # disables commands like 'useradd' while false
  users.mutableUsers = true;

  users.users = {
    liam = {
      isNormalUser = true;
      home = "/home/liam";
      password = (builtins.readFile './secrets/user-pass.txt');
      extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    };
  };
}
