class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes i'm protected!"
  end
end

fido = Animal.new
fido.a_public_method