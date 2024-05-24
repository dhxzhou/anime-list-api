# Anime and Manga List

As someone who watches anime every week, I have started a lot of animes. Some of them I have finished while others i have not. I created this anime and manga (for those of you who enjoy reading mangas) list in order to make it easier to keep track of which animes I have seen, which animes I have finished, and which animes that I enjoyed. The app will fulfill all these functions by providing an index of animes/mangas where you can add them to your own personal list, rating the anime/manga on your personal list out of 5 stars, marking whether you have finished the anime/manga, and having the ability to write a comment for the anime/manga.

Users are able to sign up and login/logout. After logging in users are able to leave comments and add animes/mangas to their own personal list. Users are also able to rate the animes on their list out of 5 stars as well as mark whether they have finished the anime/manga.

Technologies include Ruby on Rails backend, PostgreSQL database, React.js frontend, AniList API, graphQL database
<img width="1338" alt="Anime and Manga List" src="https://github.com/dhxzhou/anime-list-api/assets/76574011/b2233515-6980-4c97-ad67-136f2d6662c7">


## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can run all the API tests from the `test` folder by running: 

```bash
rails test
```

## Roadmap

In the future I plan to finished some of the above functions such as commenting, rating, and marking watched. Other ideas that I want to implement to the app is having a random button that will show users a random anime/manga on click.
