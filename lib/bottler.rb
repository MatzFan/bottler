# the app
class Bottler
  def initialize
  end

  def list
    `brew list`.split
  end

  def install(formula)
    `brew install --build-bottle #{formula}`
  end

  def bottle(formula)
    puts `brew bottle #{formula}`
  end
end
