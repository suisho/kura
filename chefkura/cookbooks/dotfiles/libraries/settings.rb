
class Shell
  def create_path_array(paths)
    [].concat(paths).concat(["$PATH"])
  end
end

class Bash < Shell
  def add_path(paths)
    value = create_path_array(paths).join(":")
    export("PATH", value)
  end
  
  def export(key, value)
    "export #{key}=#{value}"
  end
end

class Zsh < Bash
end

class Fish < Shell
  def export(key, value)
    "SET #{key} #{value}"
  end
end
