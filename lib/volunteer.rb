class Volunteer
  attr_reader :id, :project_id
  attr_accessor :name

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id).to_i
    @id = attributes.fetch(:id).to_i
  end

  def ==(vol_compare)
    if vol_compare != nil
      (self.name() == vol_compare.name()) && (self.project_id() == vol_compare.project_id())
    else
      false
    end
  end
end
