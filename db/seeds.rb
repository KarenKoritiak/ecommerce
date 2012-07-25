# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

fieldtypes = [
	{:name => "Text", :description => "Texto livre"},
	{:name => "Select", :description => "Única opção"}
]

fieldtypes.each do |attributes|
	Fieldtype.find_or_initialize_by_name(attributes[:name]).tap do |f|
		f.description = attributes[:description]
		f.save
	end
end
    
