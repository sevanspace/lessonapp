class ManyToManyViewGenerator < Rails::Generator::Base
  def manifest
    record do |m|
				m.directory('app/views/shared')
        m.file('_m2m.html.erb', 'app/views/shared/_m2m.html.erb')
    end
  end
end
