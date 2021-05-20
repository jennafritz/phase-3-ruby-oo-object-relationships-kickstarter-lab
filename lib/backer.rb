class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        project_backer = ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |project_backer_instance|
            project_backer_instance.backer == self
        end
        project_backers.map do |project_backer_instance|
            project_backer_instance.project
        end
    end

end