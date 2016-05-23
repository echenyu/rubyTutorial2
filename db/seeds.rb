# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Image.destroy_all

users = ['Eric', 'John', 'Jerry', 'Ping', 'Perry', 'Polo',
         'Jeremy', 'Rohit', 'Rohan', 'Sandeep', 'DJ', 'CJ',
         'JJ', 'Randa', 'Diego', 'Peter', 'Saad', 'Yianni', 'Kelsey', 'Sydney']

images = ['http://coolwildlife.com/wp-content/uploads/galleries/post-3004/Fox%20Picture%20003.jpg',
          'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/catffaceheader.jpg',
          'https://cdn.scratch.mit.edu/static/site/users/avatars/461/8838.png',
          'http://apod.nasa.gov/apod/image/1512/20151221LulworthCove-reKotsiopoulos.jpg',
          'http://pre02.deviantart.net/bd82/th/pre/i/2012/134/b/a/pirate_cove_by_alexlinde-d4zraes.jpg',
          'http://www.telegraph.co.uk/content/dam/Travel/galleries/travel/picturegalleries/The-Big-Picture-photography-competition-round-240/arpita_patra_2465947a-large.jpg',
          'http://boracaycompass.com/wp-content/uploads/2014/10/boracay-island-picture-galleries.jpg',
          'http://i.dailymail.co.uk/i/pix/2015/09/28/08/2CD1E26200000578-0-image-a-312_1443424459664.jpg',
          'http://graphics8.nytimes.com/images/2016/03/31/learning/VTS04-04-16LN/VTS04-04-16LN-superJumbo.jpg',
          'http://i.dailymail.co.uk/i/pix/2015/12/29/19/2FAB3E6100000578-3377927-Andrew_Suryono_Bali_I_was_taking_pictures_of_some_Orangutans_in_-a-42_1451416773881.jpg',
          'http://www.telegraph.co.uk/content/dam/Travel/galleries/travel/picturegalleries/The-Big-Picture-photography-competition-the-best-of-2015/Andrew-Beales_3412614a-large.jpg',
          'https://whyevolutionistrue.files.wordpress.com/2013/12/picture-13.png',
          'http://media2.intoday.in/indiatoday/images/stories/nasa-flower-story-and-fb-size_647_011916033342.jpg',
          'http://www.theamazingpics.com/wp-content/uploads/2014/06/Amazing-Picture-Taken-at-the-Top-of-Acatenango-Volcano-in-Guatemala.jpeg',
          'http://www.abc.net.au/news/image/7061886-3x2-940x627.jpg',
          'http://webneel.com/daily/sites/default/files/images/daily/07-2015/20-beautiful-peacock-picture-by-qels.preview.jpg',
          'https://pbs.twimg.com/profile_images/608974500676415488/55iIXrx_.jpg',
          'http://cdn1.theodysseyonline.com/files/2016/01/12/635882298922920513-772671166_6806084-pretty.jpg',
          'http://www.desicomments.com/wp-content/uploads/Keep-Calm-Cause-Im-Awesome.png',
          'http://p6.zdassets.com/hc/settings_assets/844557/200176517/8sE6g6A5l3Y7Vo3VkYerFQ-awesome_avatar_576px.png'
]

users.zip(images).each do |user, link|
  new_image = Image.new(user_name: user, link: link)
  new_image.save!
end
