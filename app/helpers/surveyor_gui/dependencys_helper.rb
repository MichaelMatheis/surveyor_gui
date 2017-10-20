module SurveyorGui::DependencysHelper
  def link_to_remove_tbody (name, f)
    f.hidden_field(:_destroy) + link_to(image_tag("delete.png",:border => 0, :margin=>'-1em'), "#", onclick: "remove_dependency_condition(this);")
  end

  def dependency_form_target_url
    if @question.part_of_group?
      "#question_#{@question.question_group.id}"
    else
      "#question_#{@question.id}"
    end
  end
end