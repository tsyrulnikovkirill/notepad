
class Memo < Post

  def read_from_console
    puts "Новая заметка (все, что пишите до строчки \"end\"):"

    @text = []
    line = nil

    until line == "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r"

    @text.unshift(time_string)
  end
end
