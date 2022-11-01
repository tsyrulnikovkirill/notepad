class Post

  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    post_types[type_index].new
  end
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    #todo
  end

  def to_strings
    #todo
  end

  def save(current_path)
    file = File.new(file_path(current_path), "w:UTF-8")

    to_strings.each { |item| file.puts(item) }

    file.close
  end

  def file_path(current_path)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    "#{current_path}/data/#{file_name}"
  end
end
