# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



list_of_media = ["book", "song", "film", "artist", "album", "TV series", "politics article", "science article", "life article", "website", "tech article", "health article", "author", "course", "place", "stage show", "gig", "festival", "ballet", "opera", "guitar song", "dish", "activity", "word", "phrase", "job", "gem of wisdom"]

list_of_media.each { |medium_name|
  Medium.find_or_create_by_name(medium_name)
}

list_to_delete = Medium.where(Medium.arel_table[:name].not_in(list_of_media))
Entry.destroy_all(medium_id: list_to_delete.map(&:id))
list_to_delete.destroy_all
