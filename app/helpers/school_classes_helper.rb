module SchoolClassesHelper
    def button_text
        if controller.controller_name == "school_classes"
            if controller.action_name == "new"
                return "Create School class"
            elsif controller.action_name == "edit"
                return "Update School class"
            end
        elsif controller.controller_name == "student"
            if controller.action_name == "new"
                return "Create Student"
            elsif controller.action_name == "edit"
                return "Update Student"
            end  
        end
    end
end
