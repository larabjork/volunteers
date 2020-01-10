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

  def save
    id = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;").first.fetch("id").to_i
    self
  end

  def self.all
    returned_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    returned_projects.each() do |project|
      title = project.fetch("title")
      id = project.fetch("id").to_i
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

end
