# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Plant.create(name: 'Rose', description: 'A rose is a woody perennial flowering plant of the genus Rosa.')
Plant.create(name: 'Tulip', description: 'Tulips are spring-blooming perennials that grow from bulbs.')
Plant.create(name: 'Daisy', description: 'Daisies are simple yet sophisticated and are some of the most beautiful flowers in the floral world.')
Plant.create(name: 'Sunflower', description: 'Sunflowers are known for their large size and the bright, yellow color of their petals.')
Plant.create(name: 'Orchid', description: 'Orchids are beautiful, delicate flowers that come in array of colors, shapes, and sizes.')
Plant.create(name: 'Lily', description: 'Lilies are a group of flowering plants which are important in culture and literature in much of the world.')
Plant.create(name: 'Bamboo', description: 'Bamboo is a tribe of flowering perennial evergreen plants in the grass family Poaceae.')
Plant.create(name: 'Daffodil', description: 'The daffodil is one of the most well-known species of Narcissus, and is one of the first flowers to bloom in the spring.')
Plant.create(name: 'Iris', description: 'The iris is a beautiful, unique flower with a striking appearance and a rich symbolic history.')
Plant.create(name: 'Lavender', description: 'Lavender is a genus of 39 known species of flowering plants in the mint family and one of the most famous herbs.')
Plant.create(name: 'Pansy', description: 'The garden pansy is a type of large-flowered hybrid plant cultivated as a garden flower.')
Plant.create(name: 'Marigold', description: 'Marigolds are hardy, annual plants and are great plants for cheering up any garden.')
Plant.create(name: 'Violet', description: 'Violets are one of the cheeriest little flowers to grace the landscape.')
Plant.create(name: 'Geranium', description: 'Geraniums are easy-care abundant bloomers whose bright flowers will blossom from spring until fall.')
Plant.create(name: 'Peony', description: 'Peonies are among the most popular garden plants in temperate regions.')
Plant.create(name: 'Poppy', description: 'Poppies are herbaceous plants, often grown for their colourful flowers.')


GardenType.create(name: 'Tropical')
GardenType.create(name: 'Desert')
GardenType.create(name: 'Woodland')
GardenType.create(name: 'Prairie')
GardenType.create(name: 'Coastal')
