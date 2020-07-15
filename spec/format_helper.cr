require "../src/field.cr"

struct Point
  getter x : Int32
  @[Crystalizer::Field(key: "Y")]
  getter y : String = "a"

  def initialize(@x)
  end
end

class Obj
  getter ary

  def initialize(@ary : Array(String))
  end

  def ==(other : self)
    @ary == other.ary
  end
end

enum Enu
  A
  B
end
