# the app
class Bottler
  def initialize
  end

  def list
    `brew list`.split
  end

  def tap(tap)
    `brew tap #{tap}` if tap
  end

  def taps
    `brew tap`.split
  end

  def install(formula)
    `brew install --build-bottle #{formula}`
  end

  def bottle(formula)
    `brew bottle #{formula}`
  end
end
