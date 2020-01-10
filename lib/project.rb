class Project
  attr_accessor :title
  attr_reader :id

  def initialize(attributes)
    @title = attributes[:title]
    @id = attributes[:id].to_i
  end

  def ==(compare)
    (@title == compare.title)
  end

end
