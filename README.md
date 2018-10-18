# [Image Recognition app](https://pixapi-image.herokuapp.com/)

![Sample homepage after login. Images and tags present](/public/sample-homepage.png)

Image recognition app built with Ruby on Rails.

Collaborative project between:

- [Kevin](https://github.com/kevinlee6)
- [Mesuara](https://github.com/mesuara)
- [Jennifer](https://github.com/jevargasv)
- [Sharna](https://github.com/sharnajh)

Image recognition services provided via [Google's Cloud Vision API](https://cloud.google.com/vision/). A maximum of 5 descriptive tags is generated per image.

Image hosting services provided via [Amazon's S3 Buckets](https://aws.amazon.com/s3/).

Yelp API was included in this app to provide relevance for the tags,

Features:

- Account creation (authenticated with [Devise](https://github.com/plataformatec/devise))
- Sign-in with either email or username
- Image upload
- Auto-generated tags
- Yelp recommendations on tag page
