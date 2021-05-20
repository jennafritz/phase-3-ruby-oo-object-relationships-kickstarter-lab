class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |project_backer_instance|
            project_backer_instance.project == self
        end

        project_backers.map do |project_backer_instance|
            project_backer_instance.backer
        end
    end

end