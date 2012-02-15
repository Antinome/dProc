module TasksHelper
  
  def join_tags(task)
    task.tags.map { |t| t.name }.join(", ")
  end

end
