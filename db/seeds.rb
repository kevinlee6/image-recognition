test = User.create!(
  username: 'nycda',
  email: 'nycda@gmail.com',
  password: 'password'
)

image = Image.create!(
  path: '/Users/nycda/Downloads/space.png',
  name: 'Space',
  user_id: 1
)

image.tags <<

tag = Tag.create!(
  category: 'Space'
)

