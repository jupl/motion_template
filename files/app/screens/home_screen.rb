class HomeScreen < PM::Screen
  def on_load
    view.styleId = :home_screen
  end

  def will_appear
    @view_setup ||= begin
      label1 = add(UILabel.new, text: 'Hello, World')
      label2 = add(UILabel.new, text: 'Hello, Again')
      Motion::Layout.new do |layout|
        layout.view(view)
        layout.subviews(label1: label1, label2: label2)
        layout.horizontal('|-10-[label1]-10-|')
        layout.horizontal('|-10-[label2]-10-|')
        layout.vertical('|-30-[label1]-10-[label2(==label1)]-10-|')
      end
      true
    end
  end
end
