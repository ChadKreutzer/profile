project_list = [
  [
    "Bootstrap Calculator",
    "/images/projects/bs_calc.jpg",
    "http://earsplitting-wilderness.surge.sh/",
    "I think this one is a lot of fun. Especially the fact that the code is " \
    "almost completely jQuery. Fun fact: I had originally just blocked in " \
    "the buttons with the default bootstrap colors with plans to change " \
    "them. But I liked the look so much I just kept them as is and changed " \
    "the background to another bootstrap color to match."
  ],
  [
    "Pomodoro Clock",
    "/images/projects/pomodoro.jpg",
    "http://romantic-trouble.surge.sh/",
    "A pomodoro clock app. I also used this as the sample solution to the " \
    "pairing project for The Odin Project."
  ],
  [
    "Wikiview",
    "images/projects/wikiview.jpg",
    "https://measly-oatmeal.surge.sh/",
    "A Wikipedia viewer app. I'm quite proud of the design on this site."]
]

project_list.each do | title, image, url, description |
  Project.create(title: title,
                 image_link: image,
                 url: url,
                 description: description)
end