class PagesController < ApplicationController
  before_action :set_quotes, only: %i(home what_we_were_promised)
  before_action :set_reviews, only: %i(home what_we_were_promised)

  def home
  end

  def bio
  end

  def currently_reading
    @title = "Lucy Tan - Currently Reading"
    @description = "See what Lucy Tan is currently reading"
    @books = {
      2021 => [
        {title: 'Klara and the Sun', author: 'Kazuo Ishiguro'},
        {title: 'Notes on an Execution', author: 'Danya Kukafka'},
        {title: 'A Lie Someone Told You About Yourself', author: 'Peter Ho Davies'},
        {title: 'The Arrival', author: 'Shaun Tan'},
        {title: 'Blankets', author: 'Craig Thompson'},
        {title: 'The Dark Forest', author: 'Cixin Liu'},
        {title: 'Joan is Okay', author: 'Weike Wang '},
        {title: 'The Custom of the Country', author: 'Edith Wharton'},
        {title: 'Lesser Known Monsters of the 21st Century', author: 'Kim Fu'},
        {title: 'One More Year', author: 'Simon Hanselmann'},
        {title: 'The Left Hand of Darkness', author: 'Ursula Le Guin'},
        {title: 'The Reunion', author: 'Guillaume Musso'},
        {title: 'Conversations with Friends', author: 'Sally Rooney'},
        {title: 'Women Talking', author: 'Miriam Toews'},
        {title: 'The Ice Palace', author: 'Tarjei Vesaas'},
        {title: 'The Tango Singer', author: 'Tomas Eloy Martinez '},
        {title: 'Stealing Buddha\'s Dinner', author: 'Bich Minh Nguyen'},
        {title: 'Cheat Day', author: 'Liv Stratman'},
        {title: 'The Dutch House', author: 'Ann Patchett'},
        {title: 'The Tenant', author: 'Katrine Engberg'},
        {title: 'Worsted', author: 'Garielle Lutz'},
        {title: 'Convenience Store Woman', author: 'Sayaka Murata'},
        {title: 'The Three-Body Problem', author: 'Cixin Lu'},
        {title: 'Tomboyland', author: 'Melissa Faliveno'},
        {title: 'Interior Chinatown', author: 'Charles Yu'},
        {title: 'The Great Believers', author: 'Rebecca Makkai'},
        {title: 'Problems', author: 'Jade Sharma'},
        {title: 'A Burning', author: 'Meghda Majumdar'},
        {title: 'Luster', author: 'Raven Leilani'},
        {title: 'Something Wild', author: 'Hanna Halperin'},
        {title: 'Watching You', author: 'Lisa Jewell'},
        {title: 'Hamnet', author: 'Maggie O\'Farrell'}
      ],
      2020 => [
        {title: 'Breasts and Eggs', author: 'Mieko Kawakami'},
        {title: 'The Office of Historical Corrections', author: 'Danielle Evans'},
        {title: 'The Hidden Life of Trees', author: 'Peter Wohlleben'},
        {title: 'The Fire Next Time', author: 'James Baldwin'},
        {title: 'If Beale Street Could Talk', author: 'James Baldwin'},
        {title: 'Kink', author: 'edited by R.O. Kwon & Garth Greenwell'},
        {title: 'Leave the World Behind', author: 'Rumaan Alam'},
        {title: 'We Are All Completely Beside Ourselves', author: 'Karen Joy Fowler'},
        {title: 'Unsettled Ground', author: 'Claire Fuller'},
        {title: 'The Testaments', author: 'Margaret Atwood'},
        {title: 'Crooked Hallelujah', author: 'Kelli Jo Ford'},
        {title: 'The Westing Game', author: 'Ellen Raskin'},
        {title: 'Disappearing Earth', author: 'Julia Phillips'},
        {title: 'The Hour of the Star', author: 'Clarice Lispector'},
        {title: 'No One You Know', author: 'Jason Schwartzman (Outpost19, May 2021)'},
        {title: 'Moms', author: 'Yeong-shin Ma'},
        {title: 'The Lost Girls of Camp Forevermore', author: 'Kim Fu'},
        {title: 'My Brother\'s Husband: Volume I', author: 'Gengoroh Tagame'},
        {title: 'Mistborn: The Final Empire', author: 'Brandon Sanderson'},
        {title: 'All You Can Ever Know', author: 'Nicole Chung'},
        {title: 'The Memory Police', author: 'Yoko Ogama'},
        {title: 'White Noise', author: 'Don DeLillo'},
        {title: 'The Magician King', author: 'Lev Grossman'},
        {title: 'The Story of the Lost Child', author: 'Elena Ferrante'},
        {title: 'Writers and Lovers', author: 'Lily King'},
        {title: 'War and Peace', author: 'Leo Tolstoy'},
        {title: 'Three Women', author: 'Lisa Taddeo'},
        {title: 'Severance', author: 'Ling Ma'},
        {title: 'Motherhood', author: 'Sheila Heti'},
        {title: 'White Ivy', author: 'Susie Yang (Simon & Schuster, November 2020)'},
        {title: 'Bunny', author: 'Mona Awad'},
        {title: 'We Ride Upon Sticks', author: 'Quan Barry'},
        {title: 'The Destiny Thief', author: 'Richard Russo'},
        {title: 'Bitter Orange', author: 'Claire Fuller'},
        {title: 'Days of Distraction', author: 'Alexandra Chang'},
        {title: 'Those Who Leave and Those Who Stay', author: 'Elena Ferrante'},
        {title: 'Stories of Your Life and Others', author: 'Ted Chiang'},
        {title: 'Girl in Snow', author: 'Danya Kukafka'},
        {title: 'Hateship, Friendship, Courtship, Loveship', author: 'Alice Munro'}
      ],
      2019 => [
        {title: 'Olive, Again', author: 'Elizabeth Strout'},
        {title: 'Kickdown', author: 'Rebecca Clarren'},
        {title: 'The Golden Compass', author: 'Philip Pullman'},
        {title: 'Heavy', author: 'Kiese Laymon'},
        {title: 'My Year of Rest and Relaxation', author: 'Ottessa Moshfegh'},
        {title: 'The Story of a New Name', author: 'Elena Ferrante'},
        {title: 'The Lover', author: 'Marguerite Duras'},
        {title: 'The Makioka Sisters', author: 'Junichiro Tanizaki'},
        {title: 'Trust Exercise', author: 'Susan Choi'},
        {title: 'Le Dessin', author: 'Marc-Antoine Mathieu'},
        {title: 'The Ensemble', author: 'Aja Gabel'},
        {title: 'Cecil and Jordan in New York', author: 'Gabrielle Bell'},
        {title: 'An American Marriage', author: 'Tayari Jones'},
        {title: 'Boy, Snow, Bird', author: 'Helen Oyeyemi'},
        {title: 'Daisy Jones and the Six', author: 'Taylor Jenkins Reid'},
        {title: 'Meander, Spiral, Explode', author: 'Jane Allison'},
        {title: 'The Regrets', author: 'Amy Bonnaffons'},
        {title: 'Prism Stalker #1', author: 'Sloane Leong'},
        {title: 'Parade', author: 'Hiromi Kawakami'},
        {title: '5000 km Per Second', author: 'Manuele Fior'},
        {title: 'Skylark', author: 'Dezso Kosztolányi'},
        {title: 'The Trouble with Goats and Sheep', author: 'Joanna Cannon'},
        {title: 'Normal People', author: 'Sally Rooney'},
        {title: 'The Wonderful Wizard of Oz', author: 'L. Frank Baum'},
        {title: 'Driving in Cars with Homeless Men', author: 'Kate Wisel (UPitt, October 2019)'},
        {title: 'Edinburgh', author: 'Alexander Chee'},
        {title: 'A Portrait of the Artist as a Young Man', author: 'James Joyce'},
        {title: 'The Last Equation of Isaac Severy', author: 'Nova Jacobs'},
        {title: 'Home Remedies', author: 'Xuan Juliana Wang (Hogarth, June 2019)'},
        {title: 'The Mermaid and Mrs. Hancock', author: 'Imogen Hermes Gowar'},
        {title: 'Behold the Dreamers', author: 'Imbolo Mbue'},
        {title: 'Night Sky with Exit Wounds', author: 'Ocean Vuong'},
        {title: 'Selfish, Shallow, and Self-Absorbed: Sixteen Writers on the Decision to Not Have Kids', author: 'Meghan Daum'},
        {title: 'Eye Level', author: 'Jenny Xie'},
        {title: 'Less', author: 'Andrew Sean Greer'},
        {title: 'My Name is Lucy Barton', author: 'Elizabeth Strout'},
        {title: "There's a Word for That", author: 'Sloane Tanen (Little, Brown, April 2019)'}
      ],
      2018 => [
        {title: 'The Recovering: Intoxication and its Aftermath', author: 'Leslie Jamison'},
        {title: 'The Hate U Give', author: 'Angie Thomas'},
        {title: 'A Man Called Ove', author: 'Fredrik Backman'},
        {title: 'The Wrong Heaven', author: 'Amy Bonnaffons'},
        {title: 'A River of Stars', author: 'Vanessa Hua'},
        {title: 'The Last Time I Lied', author: 'Riley Sager'},
        {title: 'There, There', author: 'Tommy Orange'},
        {title: 'Dopesick: Dealers, Doctors, and The Drug Company That Addicted America', author: 'Beth Macy (Little Brown, August 2018)'},
        {title: 'Asymmetry', author: 'Lisa Halliday'},
        {title: 'The Magicians', author: 'Lev Grossman'},
        {title: 'A Concise Chinese-English Dictionary for Lovers', author: 'Xiaolu Guo'},
        {title: 'Little Fires Everywhere', author: 'Celeste Ng'},
        {title: 'The Perfect Nanny', author: 'Leila Slimani'},
        {title: 'That Kind of Mother', author: 'Rumaan Alam'},
        {title: 'Crazy Rich Asians', author: 'Kevin Kwan'},
        {title: 'Manhattan Beach', author: 'Jennifer Egan'},
        {title: 'Broken Harbor', author: 'Tana French'},
        {title: 'Then She Was Gone', author: 'Lisa Jewell'},
        {title: 'The Nakano Thrift Shop', author: 'Hiromi Kawakami'},
        {title: 'The Friend', author: 'Sigrid Nunez'},
        {title: 'The Incendiaries', author: 'R.O. Kwon'},
        {title: 'If You Leave Me', author: 'Crystal Hana Kim'},
        {title: 'Mother Tongues', author: 'Theodora Bishop'},
        {title: 'Mad Honey Symposium', author: 'Sally Wen Mao'},
        {title: 'Scrappy Little Nobody', author: 'Anna Kendrick'},
        {title: 'The Wonder', author: 'Emma Donoghue'},
        {title: 'Strange Weather in Tokyo', author: 'Hiromi Kawakami'},
        {title: 'Harry Potter and the Order of the Phoenix', author: 'J.K. Rowling'},
        {title: 'Talking as Fast as I Can', author: 'Lauren Graham'},
        {title: 'Number One Chinese Restaurant', author: 'Lillian Li'},
        {title: 'Elegy on Kinderklavier', author: 'Arna Bontemps Hemenway'},
        {title: 'Red Clocks', author: 'Leni Zumas'},
        {title: 'This is a Bust', author: 'Ed Lin'}
      ],
      2017 => [
        { title: 'Her Body and Other Parties', author: 'Carmen Maria Machado'},
        { title: 'The Underground Railroad', author: 'Colson Whitehead'},
        { title: 'Pachinko', author: 'Min Jin Lee'},
        { title: 'Middlesex', author: 'Jeffrey Eugenides'},
        { title: 'The Night We\'re Not Sleeping In', author: 'Sean Bishop'},
        { title: 'I Have to Go Back to 1994 and Kill a Girl', author: 'Karyna McGlynn'},
        { title: 'Killers of the Flower Moon: The Osage Murders and the Birth of the FBI', author: 'David Grann'},
        { title: 'The Mysterious Benedict Society', author: 'Trenton Lee Stewart'},
        { title: 'The Haunting of Hill House', author: 'Shirley Jackson'},
        { title: 'Evicted: Poverty and Profit in the American City', author: 'Matthew Desmond'},
        { title: 'Off Shore', author: 'Penelope Fitzgerald'},
        { title: 'Marlena', author: 'Julie Buntin'},
        { title: 'Touch', author: 'Courtney Maum'},
        { title: 'Who Will Run the Frog Hospital?', author: 'Lorrie Moore'},
        { title: 'The Story of a New Name', author: 'Elena Ferrante'},
        { title: 'Chemistry', author: 'Weike Wang'},
        { title: 'I Love Dollars', author: 'Zhu Wen'},
        { title: 'The Emperor\'s Children', author: 'Claire Messud'},
        { title: 'Ella Enchanted', author: 'Gail Carson Levine'},
        { title: 'The Sense of an Ending', author: 'Julian Barnes'},
        { title: 'My Brilliant Friend', author: 'Elena Ferrante'},
        { title: 'Saints and Sinners', author: 'Edna O\'Brien'},
        { title: 'Lincoln in the Bardo', author: 'George Saunders'},
        { title: 'Murder on the Orient Express', author: 'Agatha Christie'},
        { title: 'Ender\'s Game', author: 'Orson Scott Card'},
        { title: 'Everything I Never Told You', author: 'Celeste Ng'},
        { title: 'Witches of America', author: 'Alex Mar'},
        { title: 'Swing Time', author: 'Zadie Smith'},
        { title: 'Girl Culture', author: 'Lauren Greenfield'},
        { title: 'Wonderful Town', author: 'David Remnick'},
        { title: 'White Oleander', author: 'Janet Fitch'},
        { title: 'The Dinner', author: 'Herman Koch'}        
      ],
      2016 => [
        { title: 'Do Not Say We Have Nothing', author: 'Madeleine Thien'},
        { title: 'Don\'t Let Me Be Lonely', author: 'Claudia Rankine'},
        { title: 'The Wangs vs. the World  ', author: 'Jade Chang'},
        { title: 'The Sympathizer', author: 'Viet Thanh Nguyen'},
        { title: 'The Snow Child', author: 'Eowyn Ivey'},
        { title: 'The Immortalists', author: 'Chloe Benjamin (Putnam, 2018)'},
        { title: '4000 Miles', author: 'Amy Herzog'},
        { title: 'Station Eleven', author: 'Emily St. John Mandel'},
        { title: 'Mr. Fox', author: 'Helen Oyeyemi'},
        { title: 'Glory', author: 'Vladimir Nabokov'},
        { title: 'Sanctuary', author: 'William Faulkner'},
        { title: 'Seating Arrangements', author: 'Maggie Shipstead'},
        { title: 'Good Girls Marry Doctors: South Asian American Daughters on Obedience and Rebellion', author: 'Piyali Bhattacharya'},
        { title: 'The Girls', author: 'Emma Cline'},
        { title: 'Transactions in a Foreign Currency', author: 'Deborah Eisenberg'},
        { title: 'Disgrace', author: 'JM Coetzee'},
        { title: 'Wicca Covens', author: 'Judy Harrow'},
        { title: 'Paganism: An Introduction to Earth-Centered Religions', author: 'Higginbotham'},
        { title: 'Bark', author: 'Lorrie Moore'},
        { title: 'A Little Life', author: 'Hanya Yanagihara'},
        { title: 'Astonish Me', author: 'Maggie Shipstead'},
        { title: 'Waylaid', author: 'Ed Lin'},
        { title: 'The Bridges of Madison County', author: 'Robert James Waller'},
        { title: 'Birds of a Lesser Paradise', author: 'Megan Mayhew Bergman'},
        { title: 'The Orphan Master\'s Son', author: 'Adam Johnson'},
        { title: 'Housekeeping', author: 'Marilynne Robinson'},
        { title: 'For Today I am a Boy', author: 'Kim Fu'},
        { title: 'The Luminaries', author: 'Eleanor Catton'}
      ],
      2015 => [
        { title: 'The Turner House', author: 'Angela Flournoy'},
        { title: 'Case Histories', author: 'Kate Atkinson'},
        { title: 'Fates and Furies', author: 'Lauren Groff'},
        { title: 'Swamplandia!', author: 'Karen Russell'},
        { title: 'A Wild Swan and Other Tales', author: 'Michael Cunningham'},
        { title: 'Slade House', author: 'David Mitchell'},
        { title: 'Black Swan Green', author: 'David Mitchell'},
        { title: 'Magic for Beginners', author: 'Kelly Link'},
        { title: 'Smart People', author: 'Lydia Diamond'},
        { title: 'Fairy Tales from the Brothers Grimm', author: 'Philip Pullman'},
        { title: 'Delicate, Edible Birds', author: 'Lauren Groff'},
        { title: 'A Tale for the Time Being', author: 'Ruth Ozeki'},
        { title: 'A Thousand Years of Good Prayers', author: 'Yiyun Li'},
        { title: 'Love in the Chameleon Club, Paris 1932', author: 'Francine Prose'},
        { title: 'Numbers in the Dark', author: 'Italo Calvino'},
        { title: 'Ms. Marvel, Vol. 1: No Normal', author: 'G. Willow Wilson'},
        { title: 'The Given World', author: 'Marian Palaia'},
        { title: 'Next Life Might be Kinder', author: 'Howard Norman'},
        { title: 'The Land of Steady Habits', author: 'Ted Thompson'},
        { title: 'The Privileges', author: 'Jonathan Dee'},
        { title: 'To Live', author: 'Yu Hua'},
        { title: 'The Rotters\' Club', author: 'Jonathan Coe'},
        { title: 'Cloud Atlas', author: 'David Mitchell'},
        { title: 'Your House is On Fire, Your Children All Gone', author: 'Stefan Kiesbye'},
        { title: 'A Reunion of Ghosts', author: 'Judith Claire Mitchell'},
        { title: 'Red', author: 'John Logan'},
        { title: 'Top Girls', author: 'Caryl Churchill'},
        { title: 'Bad Behavior', author: 'Mary Gaitskill'},
        { title: 'Making Nice', author: 'Matt Sumell'},
        { title: 'The Buried Giant', author: 'Kazuo Ishiguro'},
        { title: 'Department of Speculation', author: 'Jenny Offill'},
        { title: 'The Easter Parade', author: 'Richard Yates'},
        { title: 'Best American Short Stories 2014', author: 'Jennifer Egan'}        
      ]
    }
  end

  def what_we_were_promised
    @title = "What We Were Promised - Debut Novel by Lucy Tan"    
  end

  def book_club
    @title = "Book Club recommendations for What We Were Promised"
  end

  def news
    @title = "What We Were Promised and Lucy Tan in the News"
    @description = "Highlights of interviews and news articles about Lucy Tan and What We Were Promised"
    @reviews = []
    @news = [
      {
        date: Date.new(2018, 11, 13),
        link: 'https://www.washingtonpost.com/entertainment/books/50-notable-works-of-fiction-in-2018/2018/11/13/224490a2-d3b2-11e8-83d6-291fcead2ab1_story.html?noredirect=on&utm_term=.3b9ab928a01d',
        source: 'The Washington Post',
        img_src: pub_image('The Washington Post'),
        title: '50 Notable Works of Fiction in 2018'
      },
      {
        date: Date.new(2019, 5, 10),
        link: 'https://www.bustle.com/p/if-you-cant-get-enough-of-schitts-creek-you-need-to-read-these-13-books-17863027',
        img_src: "https://cdn.bustle.com/bustle/production/public/logo-5f0141.svg",
        source: 'Bustle',
        title: "If You Can't Get Enough Of 'Schitt's Creek,' You Need To Read These 13 Books"
      },
      {
        date: Date.new(2018, 8, 23),
        link: 'https://www.milwaukeemag.com/books-to-cozy-up-with-this-fall-2018/',
        source: 'Milwaukee Magazine',
        img_src: 'https://11pt5z46nuudt9qxx2knwgff-wpengine.netdna-ssl.com/wp-content/uploads/2015/01/MilMag_Logo_Web_padding_558x74_v2.png',
        title: '5 Books to Cozy Up With This Fall'
      },
      {
        date: Date.new(2018, 8, 15),
        link: 'https://www.washingtonpost.com/entertainment/books/now-that-hollywood-is-interested-in-asian-stories-here-are-other-books-that-should-be-movies/2018/08/14/60092ca8-9f0b-11e8-93e3-24d1703d2a7a_story.html?noredirect=on&utm_term=.e03ad76d5a52',
        source: 'The Washington Post',
        img_src: pub_image('The Washington Post'),
        title: 'Now that Hollywood is interested in Asian stories, here are other books that should be movies'        
      },
      {
        date: Date.new(2018, 8, 13),
        link: 'https://electricliterature.com/finding-home-in-the-country-you-left-2ac96b9c2275',
        source: "Electric Literature",
        img_src: "https://cdn-images-1.medium.com/letterbox/480/72/50/50/1*dKJR-1lOwP9XFYKzLvl-Iw.png?source=logoAvatar-be69ce71416c---e470410858b4",
        title: 'Trading the American Dream for the Promise of a New China'
      },
      {
        date: Date.new(2018, 8, 4),
        link: 'https://www.popsugar.com/entertainment/Books-Like-Crazy-Rich-Asians-45036022?stream_view=1#photo-45036133',
        source: 'Pop Sugar',
        img_src: "https://media1.popsugar-assets.com/static/imgs/ps-dot-logo.svg?1501884776",
        title: 'If You Love Crazy Rich Asians, You\'ll Devour These 8 Incredible Books'
      },
      {
        date: Date.new(2018, 8, 1),
        link: 'https://annarborobserver.com/articles/lucy_tan.html',
        img_src: "https://annarborobserver.com/redesign/images/ann_arbor_observer.png",
        source: "Ann Arbor Observer",
        title: 'Immigrants and Expats'
      },
      {
        date: Date.new(2018, 8, 1),
        link: 'https://www.jetsetter.com/magazine/best-new-books-to-read-this-august/',
        img_src: pub_image('Jetsetter'),
        source: 'Jetsetter',
        title: '10 Best New Books to Read This August'
      },
      {
        date: Date.new(2018, 7, 27),
        background: 'gray',
        link: 'http://www.shelf-awareness.com/readers-issue.html?issue=735#m12897',
        img_src: "http://media.shelf-awareness.com/site/img/logo2.png",
        source: 'Shelf Awareness',
        title: 'Starred Review: What We Were Promised'
      },
      {
        date: Date.new(2018, 7, 26),
        link: 'https://generasian.blog/2018/07/26/summer-reading-recommendations-what-we-were-promised-by-lucy-tan/',
        img_src: view_context.asset_url("generasian.png"),
        source: "Generasian",
        title: 'Summer Reading Recommendations: “What We Were Promised” by Lucy Tan'
      },
      {
        date: Date.new(2018, 7, 18),
        link: 'https://www.bustle.com/p/what-we-were-promised-by-lucy-tan-is-a-stunning-novel-about-the-promises-we-make-to-ourselves-each-other-9768193',
        img_src: "https://cdn.bustle.com/bustle/production/public/logo-5f0141.svg",
        source: 'Bustle',
        title: "'What We Were Promised' By Lucy Tan Is A Stunning Novel About The Promises We Make To Ourselves & Each Other"
      },
      {
        date: Date.new(2018, 7, 17),
        link: 'https://themillions.com/2018/07/great-second-half-2018-book-preview.html',
        img_src: 'https://themillions.com/wp-content/themes/millions-v2/dist/images/millions-logo.svg',
        source: 'The Millions',
        title: 'Most Anticipated: The Great Second-Half 2018 Book Preview'
      },
      {
        date: Date.new(2018, 7, 15),
        link: 'https://www.thenationalbookreview.com/features/2018/7/15/5-hot-books-kakutani-on-the-trump-era-patsy-clines-hometown-and-more',
        img_src: view_context.asset_url('national_book_review.png'),
        source: 'The National Book Review',
        title: '5 Hot Books'
      },
      {
        date: Date.new(2018, 7, 13),
        background: 'cs-yellow',
        link: 'https://www.csmonitor.com/Books/Book-Reviews/2018/0713/What-We-Were-Promised-depicts-post-Mao-China-in-a-deft-debut-novel-set-in-Shanghai',
        img_src: 'https://www.csmonitor.com/extension/csm_base/design/csm_design/images/csm-masthead_232x60.png',
        source: 'The Christian Science Monitor',
        title: "'What We Were Promised' depicts post-Mao China in a deft debut novel set in Shanghai"
      },
      {
        date: Date.new(2018, 7, 10),
        link: 'https://www.usatoday.com/story/life/books/2018/07/10/book-review-what-we-were-promised-lucy-tan-chinese-american-expats/721926002/',
        img_src: 'https://www.gannett-cdn.com/sites/usatoday/images/site-masthead-logo-dark@2x.png',
        source: 'USA Today',
        title: "Chinese-American expat family drama sparks Lucy Tan's promising debut novel"
      },
      {
        date: Date.new(2018, 7, 10),
        link: 'https://www.buzzfeednews.com/article/ariannarebolini/how-many-of-2018-best-books-have-you-read#.mhM0L1JnXG',
        img_src: pub_image("BuzzFeed"),
        source: "BuzzFeed",
        title: 'How Many Of Our Favorite 2018 Books Have You Read So Far?'
      },
      {
        date: Date.new(2018, 7, 7),
        link: 'https://nypost.com/2018/07/07/this-weeks-6-must-read-books-2/',
        background: 'red',
        img_src: pub_image("New York Post"),
        source: "New York Post",
        title: "This week’s 6 must-read books"
      },
      {
        date: Date.new(2018, 7,5),
        link: "http://www.businessinsider.com/amazon-best-books-july-2018-7",
        img_src: "data:image/svg+xml;base64,PHN2ZyBhcmlhLWxhYmVsbGVkYnk9InRpdGxlIGRlc2MiIHJvbGU9ImltZyIgdmlld0JveD0iMCAwIDEwMyAzMyIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0idGhlc3ZnIiBjbGFzcz0ic3ZnLWljb24gbG9nby1CSS1pY29uIj48dGl0bGUgaWQ9InRpdGxlIj5CdXNpbmVzcyBJbnNpZGVyIExvZ288L3RpdGxlPjxkZXNjIGlkPSJkZXNjIj5Mb2dvIGZvciBCdXNpbmVzcyBJbnNpZGVyIG92ZXIgYSB0cmFuc3BhcmVudCBiYWNrZ3JvdW5kLjwvZGVzYz48ZyBjbGFzcz0ibG9nby1CSSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNNy45ODQgMzJoMi4zOTZWMTkuMkg3Ljk4NHpNMTYuNzY3IDMxLjgwOGgyLjE0NnYtOC4wNzZMMjcuOTQ2IDMyVjE5LjM5MmgtMi4xNHY3LjkzOGwtOS4wMzktOC4xM3pNMzIuODQ1IDI4LjcwOGMxLjE2OC45MSAyLjU3IDEuNDM2IDQuMDczIDEuNDM2IDEuNDY0IDAgMi40OTEtLjUwNCAyLjQ5MS0xLjYxNyAwLS45Ny0uNjU1LTEuMzUtMS44MDItMS43NzVsLTEuODU3LS42NDVjLTEuNzEyLS42MDgtMy4wMTQtMS40OTYtMy4wMTQtMy41MzcgMC0yLjE4MyAxLjk3MS0zLjM3IDQuMzI4LTMuMzcgMS40NDQgMCAyLjc2LjM2MyAzLjc4OCAxLjAwNnYyLjE2NWMtMS4wNjktLjc5LTIuMjM5LTEuMzM0LTMuNzQyLTEuMzM0LTEuMjk0IDAtMi4yNjEuNDgzLTIuMjYxIDEuNDkgMCAuOTEuNjA3IDEuMjc0IDEuNjc2IDEuNjRsMi4wNjkuNzI2YzIuMDA1LjcwNSAyLjkyNSAxLjc5OCAyLjkyNSAzLjU5NiAwIDIuMjYyLTEuOTkgMy41MTEtNC42MDEgMy41MTEtMS43MTYgMC0zLjE3NS0uNDgtNC4wNzMtMS4wODZ2LTIuMjA2ek00Ny4xMDkgMzJoMi4zOTVWMTkuMmgtMi4zOTV6TTYwLjc0IDMwLjA2M2MyLjcgMCA0LjE0My0xLjczMiA0LjE0My00LjQ2NiAwLTIuNzU0LTEuNDQ0LTQuNDgtNC4xNDMtNC40OGgtMi42N3Y4Ljk0NmgyLjY3ek01NS44OSAxOS4yaDQuOTNjMy43OTUgMCA2LjI0OSAyLjUgNi4yNDkgNi4zOTcgMCAzLjktMi40NTQgNi40MDMtNi4yNDkgNi40MDNoLTQuOTNWMTkuMnpNNzkuMDQ3IDE5LjJ2MS45MTdINzMuMjV2My4wOGg1LjE5OXYxLjg5NWgtNS4ydjMuOTcxaDUuNzk4VjMyaC03Ljk4NVYxOS4yek04Ny41NDkgMjQuOTk2aDIuMzc3YzEuNDA3IDAgMi4yLS43NzIgMi4yLTEuOTU5cy0uNzkzLTEuOTYtMi4yLTEuOTZoLTIuMzc3djMuOTJ6bTAgMS44MVYzMmgtMi4xMTVWMTkuMmg0LjUzMmMyLjU4NCAwIDQuMjU2IDEuMzMxIDQuMjU2IDMuODM3IDAgMi4xNDMtLjkyOCAzLjM3NC0yLjkwNSAzLjY5TDk1LjgxNCAzMmgtMi40MDZsLTQuMzU0LTUuMTkzSDg3LjU1ek03LjE0NyA2LjU5Yy45MzctLjM0MyAxLjY2Ny0xLjM3MiAxLjY2Ny0yLjc4NyAwLTIuMzU4LTEuNjY3LTMuNTgtNC4zMzQtMy41OEgwdjEzLjE2M2g0Ljg5NmMyLjY2NyAwIDQuMzM0LTEuMzA4IDQuMzM0LTMuNzczIDAtMS4zOTQtLjg3NS0yLjYxNi0yLjA4My0zLjAyM3ptLTUuMDQzLS44MzZWMi4xNTNINC40NmMxLjQ4IDAgMi4yNzEuNTM2IDIuMjcxIDEuNzc5IDAgMS4yNDMtLjc5MiAxLjgyMi0yLjI3MSAxLjgyMkgyLjEwNHptMCAxLjg0NGgyLjc1YzEuNDYgMCAyLjI1MS43MjggMi4yNTEgMS45MjkgMCAxLjE3OS0uNzkyIDEuOTMtMi4yNSAxLjkzaC0yLjc1di0zLjg2ek0xOS4wMDUgMTMuNmMzLjA2MyAwIDUuMTI2LTEuODQ0IDUuMTI2LTUuNDQ1Vi4yMjNoLTIuMTY3djcuNjc0YzAgMi41My0xLjA0MiAzLjcxLTIuOTU5IDMuNzFzLTIuOTU4LTEuMTgtMi45NTgtMy43MVYuMjIzSDEzLjg4djcuOTFjMCAzLjYyMyAyLjA4MyA1LjQ2NyA1LjEyNSA1LjQ2N3ptMTAuMjI4LTEuMTU4Yy44OTYuNjQ0IDIuMzU1IDEuMTU4IDQuMDYzIDEuMTU4IDIuNjA1IDAgNC41ODQtMS4zMyA0LjU4NC0zLjczIDAtMS45MDgtLjkxNi0zLjA2Ni0yLjkxNy0zLjgxNmwtMi4wNjItLjc3MmMtMS4wNjMtLjM4NS0xLjY2Ny0uNzcxLTEuNjY3LTEuNzM2IDAtMS4wNzIuOTU4LTEuNTg2IDIuMjUtMS41ODYgMS41IDAgMi42NjcuNTc4IDMuNzMgMS40MTVWMS4wOEMzNi4xOTMuMzk1IDM0Ljg4LjAwOSAzMy40NDIuMDA5Yy0yLjM1NCAwLTQuMzEzIDEuMjY1LTQuMzEzIDMuNTggMCAyLjE2NSAxLjI5MiAzLjEwOCAzIDMuNzUxbDEuODU1LjY4NmMxLjE0Ni40NSAxLjc5Mi44NTggMS43OTIgMS44ODcgMCAxLjE3OS0xLjAyMSAxLjcxNS0yLjQ4IDEuNzE1LTEuNSAwLTIuODk2LS41NTgtNC4wNjMtMS41MjJ2Mi4zMzZ6TTQ1LjYyMy4yMjNoLTIuMTY2djEzLjE2MmgyLjE2NlYuMjIzem02LjE4MiAxMy4xNDZoMi4wODhWNC44MDZsOC43ODggOC43NjdWLjIwM2gtMi4wODJWOC42Mkw1MS44MDUgMHYxMy4zNjl6TTc2LjIyMi4yMjZ2MS45NzFoLTUuNjI2djMuMTY4aDUuMDQ1djEuOTQ5aC01LjA0NXY0LjA4M2g1LjYyNnYxLjk5MmgtNy43NVYuMjI2aDcuNzV6bTUuMDQ1IDEyLjIwN2MuODk2LjY0NCAyLjM1NCAxLjE1OCA0LjA2MyAxLjE1OCAyLjYwNCAwIDQuNTg0LTEuMzI5IDQuNTg0LTMuNzMgMC0xLjkwOC0uOTE3LTMuMDY1LTIuOTE3LTMuODE2bC0yLjA2My0uNzcxYy0xLjA2My0uMzg2LTEuNjY3LS43NzItMS42NjctMS43MzcgMC0xLjA3Mi45NTgtMS41ODYgMi4yNS0xLjU4NiAxLjUgMCAyLjY2Ny41NzkgMy43MyAxLjQxNVYxLjA3MkM4OC4yMjYuMzg2IDg2LjkxMyAwIDg1LjQ3NSAwYy0yLjM1NCAwLTQuMzEzIDEuMjY1LTQuMzEzIDMuNTggMCAyLjE2NSAxLjI5MiAzLjEwOCAzIDMuNzUxbDEuODU1LjY4NmMxLjE0Ni40NSAxLjc5Mi44NTggMS43OTIgMS44ODcgMCAxLjE3OS0xLjAyIDEuNzE1LTIuNDggMS43MTUtMS41IDAtMi44OTYtLjU1Ny00LjA2Mi0xLjUyMnYyLjMzNnptMTMuMDg2IDBjLjg5Ni42NDQgMi4zNTUgMS4xNTggNC4wNjMgMS4xNTggMi42MDUgMCA0LjU4NC0xLjMyOSA0LjU4NC0zLjczIDAtMS45MDgtLjkxNy0zLjA2NS0yLjkxNy0zLjgxNmwtMi4wNjMtLjc3MWMtMS4wNjItLjM4Ni0xLjY2Ny0uNzcyLTEuNjY3LTEuNzM3IDAtMS4wNzIuOTU5LTEuNTg2IDIuMjUtMS41ODYgMS41IDAgMi42NjguNTc5IDMuNzMgMS40MTVWMS4wNzJDMTAxLjMxMy4zODYgMTAwIDAgOTguNTYyIDBjLTIuMzU1IDAtNC4zMTMgMS4yNjUtNC4zMTMgMy41OCAwIDIuMTY1IDEuMjkyIDMuMTA4IDMgMy43NTFsMS44NTUuNjg2YzEuMTQ2LjQ1IDEuNzkyLjg1OCAxLjc5MiAxLjg4NyAwIDEuMTc5LTEuMDIxIDEuNzE1LTIuNDggMS43MTUtMS41IDAtMi44OTYtLjU1Ny00LjA2My0xLjUyMnYyLjMzNnoiLz48L2c+PC9zdmc+",
        source: "Business Insider",
        title: "10 books Amazon's editors say are the best summer reads this July"
      },
      {
        date: Date.new(2018, 7, 3),
        link: "https://www.women.com/sophiematthews/lists/books-to-read-july-2018-070318",
        img_src: "data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTQ1IDE5IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAxNDUgMTkiIHhtbDpzcGFjZT0icHJlc2VydmUiIGlkPSJzdmciIGNsYXNzPSJ3ZGNfaGVhZGVyX2xvZ28iPgo8cGF0aCBmaWxsPSIjMzMzMzMzIiBkPSJNNDguNzg3LDE1LjkxNmMtMy41MjYsMC02LjM5NS0yLjkyNi02LjM5NS02LjUyMiBjMC0zLjUwNSwyLjk3OS02LjU4LDYuMzc0LTYuNThjMy41MzgsMCw2LjQxNiwyLjk1Miw2LjQxNiw2LjU4QzU1LjE4MSwxMy4wNTEsNTIuMzcyLDE1LjkxNiw0OC43ODcsMTUuOTE2TDQ4Ljc4NywxNS45MTZ6IE00OC43NjYsNC42MTFjLTIuNjQsMC00LjYxMiwyLjUyNS00LjYxMiw0Ljc4M2MwLDIuNjA1LDIuMDc4LDQuNzI1LDQuNjMzLDQuNzI1YzIuNTk4LDAsNC42MzItMi4wNzYsNC42MzItNC43MjUgQzUzLjQxOSw2Ljc1Niw1MS4zMzIsNC42MTEsNDguNzY2LDQuNjExTDQ4Ljc2Niw0LjYxMXoiLz4KPHBhdGggZmlsbD0iIzMzMzMzMyIgZD0iTTY5LjA0MiwxNS45MTlMNjkuMDQyLDE1LjkxOWMtMC40ODcsMC0wLjg4Mi0wLjQ0NS0wLjg4MS0wLjk0MSBsMC4wMS04LjY3OWwtNC4wMDIsNC44NzdjLTAuMTY3LDAuMjA3LTAuNDc5LDAuMzIyLTAuNzMxLDAuMzIydi0wLjAwMmMtMC4yNTIsMC0wLjQ2MS0wLjEyMi0wLjYyOC0wLjMyOWwtMy45MjctNC44OTUgbDAuMDEsOC42NjRjMCwwLjQ5Ni0wLjM4OCwwLjg5OC0wLjg3NSwwLjg5OGgwLjAwM2MtMC40ODcsMC0wLjg3OS0wLjQwMi0wLjg3OS0wLjg5OWwwLjAwNC0xMS4xNjcgYzAtMC4zNzksMC4yMzQtMC43MTgsMC41ODQtMC44NDZjMC4zNS0wLjEyOCwwLjc0MS0wLjAxOCwwLjk3OCwwLjI3NWw0LjgzMyw1Ljk4NGw0LjgzNS01Ljk4MiBjMC4yMzctMC4yOTMsMC42MjgtMC40MDIsMC45NzgtMC4yNzRzMC41ODMsMC40NjcsMC41ODMsMC44NDZsLTAuMDEzLDExLjIwOEM2OS45MjMsMTUuNDc1LDY5LjUyOSwxNS45MTksNjkuMDQyLDE1LjkxOSIvPgo8cGF0aCBmaWxsPSIjMzMzMzMzIiBkPSJNNzguMTc2LDE1LjkxNmMtMy41MjEsMC02LjQzMS0yLjkxOC02LjQzMS02LjUwOHYtMC4wMyBjMC0zLjYxNywyLjg4OC02LjU1Niw2LjM4Mi02LjU1NmMyLjg4OSwwLDUuNDYyLDEuOTg4LDYuMjMyLDQuODMzYzAuMDY2LDAuMjUsMC4wMzUsMC41MTgtMC4xMDUsMC43MzQgYy0wLjE0LDAuMjE2LTAuMzYsMC4zNi0wLjYxMiwwLjM5NUw3My42NDEsMTAuMTdjMC4zNjMsMi4yMzgsMi4yNzUsMy45NDksNC41NywzLjk0OWMxLjI3NCwwLDIuNDYzLTAuNTE4LDMuMzQ2LTEuNDU1IGMwLjMzNi0wLjM1OCwwLjg5NS0wLjM3MSwxLjI0Ni0wLjAyN2MwLjM1MSwwLjM0NCwwLjM0NCwwLjkxMywwLjAwOCwxLjI3MUM4MS41OTIsMTUuMjAzLDc5LjkzNSwxNS45MTYsNzguMTc2LDE1LjkxNiBMNzguMTc2LDE1LjkxNnogTTc4LjE2Myw0LjYxOWMtMi4xODMsMC00LjAxNSwxLjU5OS00LjQ3MywzLjczMWw4LjYwMi0xLjE5MUM4MS40ODQsNS42NDIsNzkuODgxLDQuNjE5LDc4LjE2Myw0LjYxOSBMNzguMTYzLDQuNjE5eiIvPgo8cGF0aCBmaWxsPSIjMzMzMzMzIiBkPSJNOTguMDgyLDE1LjkwNGMtMC4yMzQsMC0wLjQ2My0wLjA5NS0wLjYzMy0wLjI3Mkw4OC4yMyw1LjkzNSBsMC4wMTgsOS4wNzdjMCwwLjQ5Ni0wLjM5MywwLjkwNy0wLjg4LDAuOTA3aC0wLjAwMWMtMC40ODYsMC0wLjg4MS0wLjQwOC0wLjg4Mi0wLjkwNEw4Ni40NjMsMy43MTggYzAtMC4zNjYsMC4yMTctMC42OTgsMC41NS0wLjgzNmMwLjMzMy0wLjEzOCwwLjcxNC0wLjA1NywwLjk2NCwwLjIwNmw5LjIyOSw5LjcwNWwwLjAxOC05LjA3NyBjMC4wMDEtMC40OTYsMC4zOTYtMC44OTIsMC44ODEtMC44OTJoMC4wMDJjMC40ODYsMCwwLjg4MSwwLjM5OSwwLjg3OSwwLjg5NUw5OC45NjMsMTUuMDFjLTAuMDAxLDAuMzY2LTAuMjE5LDAuNjkzLTAuNTUxLDAuODMgQzk4LjMwNSwxNS44ODUsOTguMTkzLDE1LjkwNCw5OC4wODIsMTUuOTA0Ii8+CjxwYXRoIGZpbGw9IiMzMzMzMzMiIGQ9Ik0zOS41MjQsMTUuODM2Yy0wLjI1OCwwLTAuNTEtMC4xMTYtMC42OC0wLjMyOGwtNC44MzMtNS45ODQgbC00LjgzNSw1Ljk4MmMtMC4yMzYsMC4yOTItMC42MjcsMC40MDItMC45NzcsMC4yNzNjLTAuMzUtMC4xMjctMC41ODMtMC40NjUtMC41ODQtMC44NDRMMjcuNTk1LDMuNzE5IGMtMC4wMDEtMC40OTYsMC4zOTMtMC44OTUsMC44NzktMC44OTVoMC4wMDJjMC40ODYsMCwwLjg4LDAuMzk2LDAuODgxLDAuODkybDAuMDE2LDguNzI0bDMuOTU4LTQuODk5IGMwLjE2Ny0wLjIwNywwLjQxNy0wLjMyOCwwLjY4LTAuMzI4aDBjMC4yNjMsMCwwLjUxMiwwLjEyLDAuNjgsMC4zMjdsMy45NDgsNC44ODhsLTAuMDE0LTguNzA4YzAtMC40OTcsMC4zOTQtMC44OTUsMC44OC0wLjg5NSBoMC4wMDFjMC40ODYsMCwwLjg4LDAuMzk2LDAuODgxLDAuODkybDAuMDE4LDExLjIyMWMwLDAuMzgtMC4yMzMsMC43MTgtMC41ODMsMC44NDZDMzkuNzI1LDE1LjgxOSwzOS42MjUsMTUuODM2LDM5LjUyNCwxNS44MzYiLz4KPHBhdGggZmlsbD0iIzMzMzMzMyIgZD0iTTExMS4wOSwxNS45MTZjLTMuNTM3LDAtNi40MTYtMi45MzYtNi40MTYtNi41NDUgYzAtMy42MDksMi44NzktNi41NDUsNi40MTYtNi41NDVjMS42ODIsMCwzLjI3LDAuNjU5LDQuNDc1LDEuODU2YzAuMzQ4LDAuMzQ2LDAuMzU1LDAuOTE1LDAuMDE2LDEuMjcxIGMtMC4zNCwwLjM1NS0wLjg5NiwwLjM2Mi0xLjI0NiwwLjAxNmMtMC44NzMtMC44NjgtMi4wMjUtMS4zNDYtMy4yNDQtMS4zNDZjLTIuNTY2LDAtNC42NTQsMi4xMy00LjY1NCw0Ljc0OCBjMCwyLjYxNywyLjA4OCw0Ljc0Nyw0LjY1NCw0Ljc0N2MxLjc2NywwLDIuNDA2LTAuNTA5LDMuMjUtMS4zNDljMC4zNDgtMC4zNDcsMC45MDYtMC4zNCwxLjI0NiwwLjAxNiBjMC4zMzksMC4zNTUsMC4zMzIsMC45MjQtMC4wMTYsMS4yNzFDMTE0LjM4NywxNS4yMzQsMTEzLjI3MywxNS45MTYsMTExLjA5LDE1LjkxNiIvPgo8cGF0aCBmaWxsPSIjMzMzMzMzIiBkPSJNMTIzLjc3OSwxNS45MTZjLTMuNTI2LDAtNi4zOTUtMi45MjYtNi4zOTUtNi41MjIgYzAtMy41MDUsMi45NzktNi41OCw2LjM3My02LjU4YzMuNTM3LDAsNi40MTYsMi45NTIsNi40MTYsNi41OEMxMzAuMTc0LDEzLjA1MSwxMjcuMzY1LDE1LjkxNiwxMjMuNzc5LDE1LjkxNkwxMjMuNzc5LDE1LjkxNnogTTEyMy43NTgsNC42MTFjLTIuNjM5LDAtNC42MTEsMi41MjUtNC42MTEsNC43ODNjMCwyLjYwNSwyLjA3OCw0LjcyNSw0LjYzMyw0LjcyNWMyLjU5OCwwLDQuNjMyLTIuMDc2LDQuNjMyLTQuNzI1IEMxMjguNDExLDYuNzU2LDEyNi4zMjQsNC42MTEsMTIzLjc1OCw0LjYxMUwxMjMuNzU4LDQuNjExeiIvPgo8cGF0aCBmaWxsPSIjMzMzMzMzIiBkPSJNMTQ0LjAzNSwxNS45MTlMMTQ0LjAzNSwxNS45MTkgYy0wLjQ4OCwwLTAuODgyLTAuNDQ1LTAuODgxLTAuOTQxbDAuMDEtOC42OGwtMy45OSw0Ljg3OGMtMC4xNjgsMC4yMDctMC40NjcsMC4zMjItMC43MTksMC4zMjJ2LTAuMDAyIGMtMC4yNTIsMC0wLjQ3NS0wLjEyMi0wLjY0Mi0wLjMyOWwtMy45MzMtNC44OTVsMC4wMDcsOC42NjRjMCwwLjQ5Ni0wLjM5LDAuODk4LTAuODc2LDAuODk4aDAuMDAyIGMtMC40ODYsMC0wLjg4LTAuNDAyLTAuODc5LTAuODk5bDAuMDA0LTExLjE2N2MwLTAuMzc5LDAuMjMzLTAuNzE4LDAuNTg0LTAuODQ2YzAuMzUtMC4xMjgsMC43NC0wLjAxOCwwLjk3NywwLjI3NWw0LjgzNCw1Ljk4NCBsNC44MzQtNS45ODJjMC4yMzctMC4yOTMsMC42MjktMC40MDIsMC45NzktMC4yNzRzMC41ODQsMC40NjcsMC41ODMsMC44NDZsLTAuMDEzLDExLjIwOCBDMTQ0LjkxNiwxNS40NzUsMTQ0LjUyMSwxNS45MTksMTQ0LjAzNSwxNS45MTkiLz4KPHBhdGggZmlsbD0iIzMzMzMzMyIgZD0iTTEwMy43NjUsMTUuMDA3YzAsMC41NTItMC40MzgsMC45OTktMC45NzksMC45OTkgcy0wLjk3OS0wLjQ0Ny0wLjk3OS0wLjk5OXMwLjQzOC0wLjk5OSwwLjk3OS0wLjk5OVMxMDMuNzY1LDE0LjQ1NSwxMDMuNzY1LDE1LjAwNyIvPgo8cGF0aCBmaWxsPSIjRDE0ODM2IiBkPSJNOS4yMywwLjA4M2MtNS4wNTMsMC05LjE0OSw0LjE3OC05LjE0OSw5LjMzMiBjMCw1LjE1NCw0LjA5Nyw5LjMzMiw5LjE0OSw5LjMzMmM1LjA1NCwwLDkuMTUtNC4xNzgsOS4xNS05LjMzMkMxOC4zOCw0LjI2LDE0LjI4NCwwLjA4Myw5LjIzLDAuMDgzTDkuMjMsMC4wODN6IE0xMy45MjgsMTQuNjE4IGMtMC4wNzksMC4wMjgtMC4xNiwwLjA1LTAuMjQsMC4wNWMtMC4yMDgsMC0wLjQxMS0wLjA5NC0wLjU0OS0wLjI2NUw5LjIzOSw5LjU3NmwtMy45LDQuODI2IGMtMC4xOSwwLjIzNS0wLjUwNiwwLjMyNC0wLjc4OCwwLjIyMkM0LjI2OSwxNC41Miw0LjA4LDE0LjI0Nyw0LjA4LDEzLjk0MWwtMC4wMTctOS4wOEM0LjA2Miw0LjQ2LDQuMzc5LDQuMTA4LDQuNzcyLDQuMTA4IGgwLjAwMWMwLjM5MiwwLDAuNzEsMC4zNTEsMC43MTEsMC43NWwwLjAxMyw3LjA1NGwzLjE5My0zLjk0NWMwLjEzNS0wLjE2NywwLjMzNi0wLjI2LDAuNTQ4LTAuMjZ2MC4wMDEgYzAuMjEyLDAsMC40MTQsMC4wOTgsMC41NDksMC4yNjVsMy4xODUsMy45NDRsLTAuMDExLTcuMDU3YzAtMC40LDAuMzE3LTAuNzUzLDAuNzEtMC43NTNoMC4wMDFjMC4zOTIsMCwwLjcxLDAuMzUxLDAuNzExLDAuNzUgbDAuMDE0LDkuMDY5QzE0LjM5OCwxNC4yMzQsMTQuMjEsMTQuNTE0LDEzLjkyOCwxNC42MThMMTMuOTI4LDE0LjYxOHoiLz4KPC9zdmc+",
        source: "Women.com",
        title: "7 Books That'll Make Your July SO Much Better"
      },
      {
        date: Date.new(2018, 7, 2),
        background: "black",
        link: "https://www.refinery29.com/2018/07/203411/new-books-july-2018#slide-4",
        img_src: "https://www.refinery29.com/assets/b1649921d5adbbccbdcc065dd2474644.svg",
        source: "Refinery 29",
        title: "The Best New Books Out This July"
      },
      {
        date: Date.new(2018, 7, 1),
        link: "https://www.barnesandnoble.com/blog/julys-best-new-fiction-2018/",
        img_src: "http://www.barnesandnobleinc.com/wp-content/uploads/logo.svg",
        source: "Barnes & Noble",
        title: "July’s Best New Fiction"
      },
      {
        date: Date.new(2018, 7, 2),
        link: "https://bookriot.com/2018/07/02/july-2018-horoscopes-and-book-recommendations/",
        img_src: "https://s2982.pcdn.co/wp-content/uploads/2017/10/bookriot-logo-1.png",
        source: "Book Riot",
        title: "July 2018 Horoscopes and Book Recommendations"
      },
      {
        date: Date.new(2018, 6, 30),
        link: "https://www.bustle.com/p/the-17-best-fiction-books-coming-out-in-july-2018-9593488",
        img_src: "https://cdn.bustle.com/bustle/production/public/logo-5f0141.svg",
        source: "Bustle",
        title: "The 17 Best Fiction Books Coming Out In July 2018"
      },
      {
        date: Date.new(2018, 5, 31),
        background: "black",
        link: "https://www.youtube.com/watch?v=djlOUHFHvFA",
        img_src: "https://static.wixstatic.com/media/c55dbc_7dd440d5f30d4ad191a5346fb38ce1bb~mv2.png/v1/fill/w_660,h_115,al_c,usm_0.66_1.00_0.01/c55dbc_7dd440d5f30d4ad191a5346fb38ce1bb~mv2.png",
        source: "Ink and Paper Blog",
        title: "9 Asian American Women Writers That Rock My Reading World"
      },
      {
        link: "http://www.shelf-awareness.com/issue.html?issue=3273#m40805",
        background: "gray",
        img_src: "http://media.shelf-awareness.com/site/img/logo2.png",
        source: "Shelf Awareness",
        title: "Review: What We Were Promised"
      },
      {
        date: Date.new(2018, 6, 18),
        link: "http://theeverygirl.com/10-most-anticipated-novels-of-the-summer/",
        img_src: "http://cdn.theeverygirl.com/wp-content/themes/theeverygirl/images/logo.png",
        source: "The Every Girl",
        title: "The 10 Most Anticipated Novels of the Summer "
      },
      {
        date: Date.new(2018, 5, 30),
        background: "black",
        link: "https://www.mypalmbeachpost.com/entertainment/seventeen-sizzling-reads-for-south-florida-summer/PUmyLMc4V27RkvAKqXD5NP/",
        img_src: "https://www.mypalmbeachpost.com/r/PortalConfig/np-paid/assets/mypalmbeachpost/images/logo-white-text.svg",
        source: "My Palm Beach Post",
        title: "Seventeen sizzling reads for a South Florida summer"
      },
      {
        link: "http://centerforfiction.org/awards/the-first-novel-prize/2018-first-novel-prize-long-list/",
        img_src: "http://centerforfiction.org/images/logo.gif",
        source: "The Center For Fiction",
        title: "What We Were Promised longlisted for the 2018 Center for Fiction First Novel Prize",
      },
      {
        link: "http://petrichorzine.com/share.php?trackid=15",
        img_src: "http://petrichorzine.com/img/logo.jpg",
        source: "Petrichor",
        title: '"Safety of Numbers" Audio Recording Released',
      },
      {
        date: Date.new(2018, 6, 24),
        link: "https://www.popsugar.com/entertainment/Best-Summer-Books-2018-44898477?stream_view=1",
        img_src: "https://media1.popsugar-assets.com/static/imgs/ps-dot-logo.svg?1501884776",
        source: "Pop Sugar",
        title: "30 Must-Read Books to Bring on Your Summer Vacation"
      },
      {
        link: "https://modernmrsdarcy.com/summer-reading-guide-2018",
        img_src: "https://modernmrsdarcy.com/wp-content/uploads/2017/03/mmd-logo-handmade-400.png",
        source: "Modern Mrs. Darcy",
        title: "Summer Reading Guide 2018"
      },
      {
        link: "https://modernmrsdarcy.com/minimalist-summer-reading-guide-2018/",
        img_src: "https://modernmrsdarcy.com/wp-content/uploads/2017/03/mmd-logo-handmade-400.png",
        source: "Modern Mrs. Darcy",
        title: "Minimalist Summer Reading Guide 2018"
      },
      {
        date: Date.new(2018, 5, 22),
        link: "https://modernmrsdarcy.com/133-episode/",
        img_src: "https://modernmrsdarcy.com/wp-content/uploads/2017/03/mmd-logo-handmade-400.png",
        source: "Modern Mrs. Darcy",
        title: "Podcast Review"
      },
      {
        date: Date.new(2018, 5, 25),
        link: "https://www.mydomaine.com/best-new-books-for-summer-2018--5b05bc439f958",
        img_src: "data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 169 16' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cpath d='M0 .083h168.914V15.99H0V.083z'/%3E%3Cpath d='M44.094 12.982c2.463 0 4.47-2.033 4.47-4.528 0-2.495-2.007-4.528-4.47-4.528H41.61v9.056h2.484zM38.632 16V.908h5.462c4.112 0 7.448 3.38 7.448 7.546 0 4.165-3.336 7.546-7.448 7.546h-5.462zm21.253-7.546c0 2.495 2.007 4.528 4.47 4.528 2.462 0 4.47-2.033 4.47-4.528 0-2.495-2.008-4.528-4.47-4.528-2.463 0-4.47 2.033-4.47 4.528zM64.355 16c-4.112 0-7.45-3.38-7.45-7.546 0-4.165 3.338-7.546 7.45-7.546 4.11 0 7.448 3.38 7.448 7.546 0 4.165-3.337 7.546-7.45 7.546zM79.73.908h.753l5.383 5.896L91.23.908h.774L93.136 16h-2.98L89.5 7.267l-3.634 3.984-3.636-3.98-.672 8.73h-2.98L79.73.91m30.746 9.558l-2.204-4.105-2.205 4.11h4.41zm1.63 3.02h-7.668L103.088 16H99.69L108.273.083l8.6 15.917h-3.397l-1.37-2.515zm11.72-12.58h2.98V15.99h-2.98V.908zm12.114 0h.795l9.137 8.814V.908h2.98V16h-.815l-9.117-8.814V16h-2.98V.908m22.05 0h10.924v3.018h-7.946v4.528h5.96v3.018h-5.96v1.51h7.946V16H157.99V.908' fill='%23000' mask='url%28%23mask-2%29'/%3E%3Cpath d='M12.167 14.563l-.855-9.693L7.098 9.3 2.86 4.867l-.775 9.697-1.033-.017.862-12.424 5.153 5.73 5.17-5.763.923 12.456-.993.017zm.91-13.918h-.743l-5.26 5.64L1.88.645h-.744L0 15.49h2.937l.656-8.615 3.482 3.816 3.514-3.82.68 8.62h2.936L13.08.65zm14.19 9.365v4.82h-1.302v-4.82L20.88 1.634h1.416l4.317 7.087 4.397-7.08h1.42l-5.16 8.378zm3.21-9.316l-3.864 6.24L22.77.694l-3.685.01 5.904 9.64v5.475h3.25v-5.48L34.18.7 30.475.69zM24.89 8.77l.003.005-.003-.005' fill='%23000'/%3E%3Cpath fill='%23000' d='M24.89 8.77v-.023l.003.028-.003-.005'/%3E%3C/g%3E%3C/svg%3E",
        source: "My Domaine",
        title: "The Most Anticipated Books of Summer 2018 That Are Actually Worth Your Time"
      },
      {
        date: Date.new(2018, 5, 16),
        link: "https://twitter.com/iBooks/status/996799975102263297",
        img_src: "https://pbs.twimg.com/profile_images/804804365093511168/cawEsoVo_bigger.jpg",
        source: "iBooks",
        title: "Summer's Most Anticipated Books"
      },
      {
        link: "https://creativewriting.wisc.edu/fellows.html",
        img_src: "https://creativewriting.wisc.edu/images/UW-CWP_header.gif",
        source: "Creative Writing at the University of Wisconsin-Madison",
        title: "Lucy Tan awarded the James C. McCreight Fellowship from the Wisconsin Institute of Creative Writing"
      },
      {
        link: "https://best-books.publishersweekly.com/pw/best-books/summer-reads-2018/fiction#book/book-12",
        img_src: "https://www.publishersweekly.com/images/logo-trans.png",
        source: "Publisher's Weekly",
        title: "What We Were Promised Named a \"Best Book of Summer\""
      },
      {
        date: Date.new(2018, 3, 27),
        link: "https://www.barnesandnoble.com/blog/announcing-discover-great-new-writers-summer-2018-selections/",
        img_src: "http://www.barnesandnobleinc.com/wp-content/uploads/logo.svg",
        source: "Barnes & Noble",
        title: "Discover Great New Writers Summer 2018 Selection"
      },
      {
        date: Date.new(2018, 4, 17),
        link: "https://www.kirkusreviews.com/book-reviews/lucy-tan/what-we-were-promised/",
        img_src: "https://d3eoifnsb8kxf0.cloudfront.net/img/kirkus-nav-logo.svg",
        source: "Kirkus",
        title: "Kirkus reviews What We Were Promised"
      },
      {
        link: "https://www.southernliving.com/culture/summer-books-2018",
        img_src: "https://www.southernliving.com/sites/all/themes/ti_sl_anniversary/assets/images/sl-logo.svg",
        source: "Southern Living",
        title: "The Best New Books Coming Out Summer 2018"
      },
      {
        date: Date.new(2018, 5, 23),
        link: "https://shereads.com/this-summers-must-read-debuts/",
        img_src: "http://5gluc3z8809473hrbtk76i16qu.wpengine.netdna-cdn.com/wp-content/uploads/2018/06/she-reads-full-banner-simple-1.jpg",
        source: "She Reads",
        title: "This Summer's Must-Read Debuts"
      },
      {
        date: Date.new(2018, 1, 18),
        link: "https://lunch.publishersmarketplace.com/2018/01/buzz-books-spring-summer-preview-literary-debut-fiction/",
        img_src: "https://32fc87n66z83fzh742e992fv-wpengine.netdna-ssl.com/wp-content/uploads/2017/08/Publishers-Lunch-Logo-master.png",
        source: "Publisher's Marketplace",
        title: "Buzz Books Spring/Summer Preview: Literary & Debut Fiction"
      },
      {
        date: Date.new(2018, 1, 18),
        link: "http://reviews.libraryjournal.com/2018/01/prepub/fiction-previews/summer-debuts-fiction-previews-jul-2018/",
        img_src: "https://s3.amazonaws.com/ImageCloud/logo_LibraryJournal_242x32_darker.png",
        source: "Library Journal",
        title: "Summer Debuts | Fiction Previews, Jul. 2018"
      },
      {
        date: Date.new(2017, 12, 27),
        link: "https://www.bustle.com/p/19-debut-novels-coming-out-in-2018-that-you-definitely-wont-want-to-miss-7649015",
        img_src: "https://cdn.bustle.com/bustle/production/public/logo-5f0141.svg",
        source: "Bustle",
        title: "19 Debut Novels Coming Out In 2018 That You Definitely Won’t Want To Miss"
      },
      {
        date: Date.new(2017, 12, 26),
        background: "black",
        link: "https://www.huffingtonpost.com/entry/2018-book-preview_us_5a383493e4b0c65287aba20b",
        img_src: "https://s.m.huffpost.com/assets/HuffPostHero-d783f680fb974e80346bdfa145131d058e596e1d32f791981875aa481702c770.svg",
        source: "Huffington Post",
        title: "60 Books We Can’t Wait To Read In 2018"
      },
      {
        date: Date.new(2017, 12, 26),
        link: "https://electricliterature.com/46-books-by-women-of-color-to-read-in-2018-70a0bf5bf4f2",
        img_src: "https://cdn-images-1.medium.com/letterbox/480/72/50/50/1*dKJR-1lOwP9XFYKzLvl-Iw.png?source=logoAvatar-be69ce71416c---e470410858b4",
        source: "Electric Literature",
        title: "46 Books By Women of Color to Read in 2018"
      }      
    ]

    @interviews = [
      { 
        date: Date.new(2020, 6, 10),
        link: 'https://uwm.edu/creamcityreview/interview-with-2020-fiction-prize-judge-lucy-tan/',
        img_src: 'https://uwm.edu/creamcityreview/wp-content/uploads/sites/421/2020/05/web-banner-44.1-low-res-for-web.png',
        source: 'Cream City Review',
        title: 'Interview with 2020 Fiction Prize Judge Lucy Tan'
      },
      { 
        date: Date.new(2018, 8, 29),
        link: "https://www.barnesandnoble.com/blog/imagine-your-way-into-another-life-lucy-tan-and-chloe-benjamin-in-conversation/",
        img_src: "http://www.barnesandnobleinc.com/wp-content/uploads/logo.svg",
        source: "Barnes & Noble",
        title: "Imagine Your Way Into Another Life: Lucy Tan and Chloe Benjamin in Conversation"
      },
      {
        date: Date.new(2018, 8, 17),
        background: 'black',
        link: 'https://www.kollabsf.org/kollabblog/2018/8/8/kollabsfgetslit-with-lucy-tan',
        img_src: 'https://static1.squarespace.com/static/59c0961659cc686922385cf3/t/5a7beb690d9297c235398f65/1537083899816/?format=1500w',
        source: 'Kollaboration San Fransisco',
        title: '#KollabSFGetsLit with Lucy Tan, Author of What We Were Promised'
      },
      {
        date: Date.new(2018, 8, 13),
        link: 'https://electricliterature.com/finding-home-in-the-country-you-left-2ac96b9c2275',
        source: "Electric Literature",
        img_src: "https://cdn-images-1.medium.com/letterbox/480/72/50/50/1*dKJR-1lOwP9XFYKzLvl-Iw.png?source=logoAvatar-be69ce71416c---e470410858b4",
        title: 'Trading the American Dream for the Promise of a New China'
      },
      {
        date: Date.new(2018, 7, 31),
        link: 'https://themillions.com/2018/07/lucy-tan-and-crystal-hana-kim-discuss-societal-roles-war-secrets-and-the-complications-of-love.html',
        img_src: 'https://themillions.com/wp-content/themes/millions-v2/dist/images/millions-logo.svg',
        source: 'The Millions',
        title: 'Lucy Tan and Crystal Hana Kim Discuss Societal Roles, War, Secrets, and the Complications of Love'
      },
      {
        date: Date.new(2018, 7, 19),
        background: 'isthmus-red',
        link: 'https://isthmus.com/arts/books/lucy-tan-what-we-were-promised-uw-madison/',
        img_src: 'https://isthmus.com/api/design-49ad55fd1cd41fd3b0840f2fae1752c8/isthmus-logo.png',
        source: 'The Isthmus',
        title: 'A writer learns to listen'
      },
      {
        date: Date.new(2018, 7, 18),
        link: 'https://www.bustle.com/p/what-we-were-promised-by-lucy-tan-is-a-stunning-novel-about-the-promises-we-make-to-ourselves-each-other-9768193',
        img_src: "https://cdn.bustle.com/bustle/production/public/logo-5f0141.svg",
        source: 'Bustle',
        title: "'What We Were Promised' By Lucy Tan Is A Stunning Novel About The Promises We Make To Ourselves & Each Other"
      },
      {
        date: Date.new(2018, 7, 13),
        link: 'http://midwestgothic.com/2018/07/interview-lucy-tan/',
        img_src: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/198635_207598169250236_1613736_n.jpg?_nc_cat=0&oh=5bb907a958264f382b1a0dc30ccc6455&oe=5BC5B96E',
        background: 'black',
        source: 'Midwestern Gothic',
        title: 'Interview: Lucy Tan'
      },
      {
        date: Date.new(2018, 7, 11),
        link: 'https://www.readingwomenpodcast.com/blog/interview-with-lucy-tan',
        img_src: '//static1.squarespace.com/static/58435fdf37c581d99d8c1f43/t/587d2434414fb5c9a57665fe/1531496752223/?format=1500w',
        source: "Reading Women",
        title: "Podcast Interview"
      },
      {
        date: Date.new(2018, 7, 12),
        link: 'https://www.youtube.com/watch?v=7TBQ_SRPeCU',
        img_src: '/writing_fun.jpg',
        source: "Writing Fun",
        title: "Shanghai with Lucy Tan"
      },
      {
        date: Date.new(2017, 9, 30),
        background: "yellow",
        link: "https://soundcloud.com/jackson-tobin-922865676/episode-five-book-deal-w-lucy-tan",
        img_src: "https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/5a/38/3d/5a383d73-bcd3-088a-114c-863e59e18c7a/source/170x170bb.jpg",
        source: "Write & Eat Podcast",
        title: "Podcast Interview"
      }
    ]

  end

  def events
    @title = "Lucy Tan - Events"
    @description = "Lucy is on the move! See the upcoming schedule to see if an event is coming to a city near you!"

    @events = [
      {
        date: Date.new(2020, 11, 18),
        title: 'Susie Yang: White Ivy',
        subtitle: 'In conversation with Lucy Tan',
        time: '7:00 PM (EST)',
        location: 'Virtual via Books Are Magic',
        link: 'https://www.eventbrite.com/e/susie-yang-white-ivy-w-lucy-tan-registration-126573128635'
      },
      { 
        date: Date.new(2020, 10, 17),
        title: 'Wisconsin Book Festival',
        subtitle: 'In Conversation with Kelli Jo Ford',
        time: '5:30 (Central)',
        location: 'Virtual',
        link: 'https://www.wisconsinbookfestival.org/events/crooked-hallelujah'
      },
      {
        date: Date.new(2020, 6, 1),
        title: 'Virtual Author Visit',
        location: 'West Orange Public Library'
      },
      {
        date: Date.new(2020, 1, 5),
        title: 'In Conversation with Kate Wisel',
        location: 'Elliott Bay Book Company',
        schema_location: {
          name: 'Elliot Bay Book Company',
          street_address: '1521 10th Ave',
          city: 'Seattle',
          state: 'WA',
          zip: '98122'
        }
      },
      {
        date: Date.new(2019, 11, 21),
        title: 'Promises, Promises',
        subtitle: 'Reading and Conversation with Lucy Tan and Rebecca Clarren',
        time: '7:00 PM',
        location: 'Hugo House',
        person: 'Rebecca Clarren',
        schema_location: {
          name: 'Hugo House',
          street_address: '1634 11th Ave',
          city: 'Seattle',
          state: 'WA',
          zip: '98122'
        }
      },
      {
        date: Date.new(2019, 8, 20),
        title: 'Reading',
        location: 'Elliot Bay Book Company',
        schema_location: {
          name: 'Elliot Bay Book Company',
          street_address: '1521 10th Ave',
          city: 'Seattle',
          state: 'WA',
          zip: '98122'
        }
      },
      {
        date: Date.new(2019, 6, 27),
        title: "David R. Collins Writers' Conference",
        subtitle: 'From Novel Idea to Immersive First Draft',
        location: 'St. Ambrose University | McCarthy Hall',
        schema_location: {
          name: 'McCarthy Hall',
          street_address: '518 W. Locust St',
          city: 'Davenport',
          state: 'IA',
          zip: '52803'
        },
        link: 'https://www.mwcqc.org/events-opportunities/david-r-collins-writers-conference/'
      },
      {
        date: Date.new(2019, 5, 23),
        title: 'Book Club Cafe',
        location: 'Madison Public Library, 201 W Mifflin St, Madison, WI',
        schema_location: {
          name: 'Madison Public Library',
          street_address: '201 W Mifflin St',
          city: 'Madison',
          state: 'WI',
          zip: '53703'
        },
        link: 'https://www.madisonpubliclibrary.org/engagement/book-club-cafe-2019'
      },
      {
        date: Date.new(2019, 4, 25),
        time: '7:00 PM',
        title: 'Reading',
        subtitle: 'The UW Program in Creative Writing present 2018-19 Wisconsin Institute for Creative Writing Poetry & Fiction Fellows',
        location: 'Madison Public Libray\'s Community Room, 201 W Mifflin St, Madison WI',
        schema_location: {
          name: 'Madison Public Library',
          street_address: '201 W Mifflin St',
          city: 'Madison',
          state: 'WI',
          zip: '53703'
        }
      },
      {
        date: Date.new(2019, 4, 18),
        title: 'North Central College',
        location: 'Naperville, IL'
      },
      {
        date: Date.new(2019, 4, 11),
        time: '7:00 PM',
        title: 'Lit Fest 2019 Keynote Speaker',
        subtitle: 'presented by UW Publications',
        location: 'University South, Varsity Hall, Madison, WI'
      },
      {
        date: Date.new(2019, 4, 1),
        time: '6:30 PM',
        title: 'A Reading at the Ruby SF',
        location: 'The Ruby San Fransisco'
      },
      {
        date: Date.new(2019, 3, 28),
        time: '3:00 - 4:15 PM',
        title: 'AWP in Portland',
        subtitle: 'Debut Authors: Navigating all the seasons of book publications, with Ingrid Rojas Contreras, Crystal Hana Kim, Lillian Li, and Lydia Kiesling',
        location: '8110-112, Oregon Convention Center, Level 1',
        schema_location: {
          name: 'Oregon Convention Center',
          street_adress: '777 NE Martin Luther King Jr Blvd',
          city: 'Portland',
          state: 'OR',
          zip: '97232'
        }
      },
      {
        date: Date.new(2019, 2, 26), 
        time: '7:00 PM', 
        title: 'Author Talk', 
        subtitle: 'In conversation with Chloe Benjamin, author of \'The Immortalists\'', 
        location: 'Boswell Book Company, 2559 N. Downer Ave., Milwaukee, WI',
        schema_location: {
          name: 'Boswell Book Company',
          street_address: '2559 N. Downer Ave.',
          city: 'Milwaukee',
          state: 'WI',
          zip: '53211'
        },
        person: 'Chloe Benjamin',
        link: 'https://www.facebook.com/events/348983449165286/'
      },
      {date: Date.new(2018, 12, 20), time: '7:30 PM', title: 'Pete\'s Reading Series', subtitle: 'presented by Kundiman', location: '709 Lorimer Street, Williamsburg, BK' },
      {
        date: Date.new(2018, 12, 6),
        time: '5:00 PM',
        title: 'Power and Money and Wisconsin Women Writers',
        subtitle: 'A panel presented by Milwaukee Repertory Theater',
        location: 'Woodland Pattern, 720 East Locust St, Milwaukee, WI',
        schema_location: {
          name: 'Woodland Pattern Book Center Inc',
          street_address: '720 East Locust Street',
          city: 'Milwaukee',
          state: 'WI',
          zip: '53212'
        },
        link: 'https://www.eventbrite.com/e/power-money-wisconsin-writers-tickets-51565335306'
      },
      {
        date: Date.new(2018, 12, 5), time: '6:00 PM', title: 'Author Talk: Greenwood High School Library', location: '306 W Central Ave., Greenwood, WI'
      },
      {date: Date.new(2018, 10, 18), title: "The Guilded Leaf Book and Author Luncheon", location: "Carmel, Indiana"},
      {date: Date.new(2018, 10, 17), title: "The Guilded Leaf Writers at the Pavilion", location: "Carmel, Indiana"},
      {
        date: Date.new(2018, 10, 13), 
        title: "Harrisburg Book Festival", 
        subtitle: "Portraits of Home: A Conversation with Lucy Tan and Crystal Hana Kim", 
        person: "Crystal Hana Kim",
        location: "Midtown Scholar Bookstore, Harrisburg, PA",
        schema_location: {
          name: 'Midtown Scholar Bookstore',
          street_address: '1302 North Third Street',
          city: 'Harrisburg',
          state: 'PA',
          zip: 17102
        },
        link: 'https://www.hbgbookfest.com/lucy-tan'
      },
      {
        date: Date.new(2018, 10, 12), 
        time: '6:00 PM', 
        title: 'Wisconsin Book Festival ', 
        subtitle: " (date recently changed)", 
        location: "Central Library - The Bubbler, Madison, WI", 
        schema_location: {
          name: 'Madison Central Library',
          street_address: '201 W Mifflin St',
          zip: 53703,
          city: 'Madison',
          state: 'WI'
        },
        link: 'https://wisconsinbookfestival.org/events/what-we-were-promised',
        description: 'Reading of What We Were Promised by debut author Lucy Tan'
      },
      {date: Date.new(2018, 9, 27), time: '1:00 PM', title: 'Reading and Discussion with Mary Terrier', location: 'Edgewood College, Predolin 329'},
      {date: Date.new(2018, 9, 20), time: '7:00 PM', title: "What We Leave Behind: Lucy Tan, Crystal Hana Kim, and Vanessa Hua", location: "New York, NY", people: ['Vanessa Hua', 'Crystal Hana Kim'], link: 'https://www.eventbrite.com/e/what-we-leave-behind-lucy-tan-crystal-hana-kim-and-vanessa-hua-tickets-48165758079#'},
      {date: Date.new(2018, 9, 8), time: '7:00 PM', title: 'Reading with Stephen Hitchcock', location: 'New Dominion Bookshop, Charlottesville, VA', person: "Stephen Hitchcock", link: 'https://ndbookshop.com/events/lucy-tan-and-stephen-hitchcock/'},
      {date: Date.new(2018, 9, 1), time: "1:45 - 2:30", title: "AJC Decatur Book Festival", location: "Decatur, GA"},
      {date: Date.new(2018, 8, 3), time: '4:00 PM', title: 'Author Visit', location: "Mountain Ridge Country Club, West Caldwell, NJ"},
      {date: Date.new(2018, 8, 2), time: '6:00 PM', title: 'Reading & Discussion', subtitle: 'with Lillian Li', location: "Pages Bookshop, Detroit, MI", person: "Lillian Li"},
      {date: Date.new(2018, 8, 1), time: '7:00 PM', title: "Reading", subtitle: 'In conversation with Lillian Li', location: "Literati Bookstore, Ann Arbor, MI", person: "Lillian Li", link: 'https://www.literatibookstore.com/event/fiction-literati-lucy-tan'},
      {date: Date.new(2018, 7, 24), time: '7:00 - 8:30pm', title: "Reading and Signing", location: "Livingston Public Library, Livingston, NJ", link: 'https://www.eventbrite.com/e/meet-the-author-lucy-tan-what-we-were-promised-tickets-46684340118'},
      {date: Date.new(2018, 7, 19), time: '7:30 PM', title: "Reading", subtitle: 'In conversation with Weike Wang', location: "Books Are Magic, Brooklyn, NY", person: "Weike Wang", link: 'https://www.facebook.com/events/2080753235582528/'},
      {date: Date.new(2018, 7, 17), time: '7:00 - 9:00', title: 'Point Street Reading Series', location: 'Alchemy, Providence, RI', link: 'https://www.facebook.com/events/274337023142272/'},
      {date: Date.new(2018, 7, 12), time: '7:00 PM', title: 'Reading', subtitle: 'In conversation with Rumaan Alam', location: 'Barnes & Noble Upper East Side (86th Street), Manhattan, NY', link: 'https://stores.barnesandnoble.com/event/9780061936021-0'},
      {date: Date.new(2018, 5, 19), time: '2:00 - 4:30', title: "Mochi Mag Presents: A Writers' Panel", location: "New York Public Library's 53rd St Branch, Manhattan, NY", link: "https://www.eventbrite.com/e/a-writers-panel-tickets-45326111620?aff=efbeventtix"},
      {date: Date.new(2018, 3, 9), time: '4:30 - 5:45', title: 'AWP in Tampa, FL', subtitle: "Understanding Novel Structure", location: "Florida Salon 1, 2, & 3, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 3, 9), time: '3:00 - 4:15', title: "AWP in Tampa, FL", subtitle: "Write What You Want to Know: Fiction Writers on Research", location: "Grand Salon B, Marriott Waterside, Second Floor"}
    ]
  end

  def other_work
    @title = "Lucy Tan - Other Work"
    @description = "Short stories and articles by author Lucy Tan"
    @articles = [
      {
        date: Date.new(2018, 12, 14),
        link: 'https://themillions.com/2018/12/a-year-in-reading-lucy-tan.html',
        img_src: 'https://themillions.com/wp-content/themes/millions-v2/dist/images/millions-logo.svg',
        source: 'The Millions',
        title: 'A Year in Reading: Lucy Tan'
      },
      {
        date: Date.new(2018, 7, 8),
        background: "tan",
        link: "https://lithub.com/on-falling-in-love-with-the-language-id-spent-my-whole-life-speaking/",
        img_src: '/lithub.png',
        source: "Literary Hub",
        title: "On Falling in Love with the Language I’ve Spoken My Entire Life"
      },
      {
        date: Date.new(2018, 7, 10),
        link: "https://medium.com/s/story/this-is-not-my-fathers-china-1cda235923f7",
        img_src: pub_image("Medium"),
        source: "Medium",
        title: "This Is Not My Father's China"
      },
      { 
        date: Date.new(2018, 7, 10),
        link: "https://www.buzzfeed.com/lucytan/books-to-read-by-asian-writers-before-crazy-rich-asians?utm_term=.iseMozN0pW#.deNj6DbNOP",
        img_src: pub_image("BuzzFeed"),
        source: "BuzzFeed",
        title: '13 Books To Read After "Crazy Rich Asians"'
      }
    ]
  end

  def contact
    @title = "Lucy Tan - Contact"
    @description = "Get in touch with Lucy to schedule an interview, event, or a video call into a book club."
  end

  #POST /contact
  # TODO: throttle https://github.com/dryruby/rack-throttle
  def contact_send
    if (params[:user_name].to_s == '') or (params[:email].to_s == '') or (params[:subject].to_s == '') or (params[:message].to_s == '')
      render json: { 
        message: 'Error: invalid parameters, missing required fields',
        status: 400
      }, status: 400
      return 
    end
    
    ContactAuthorMailer.contact(params[:user_name], params[:email], params[:subject], params[:message]).deliver_now

    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, flash: {notice: 'message sent successfully'} }
      format.json { render json: {message: "success", status: 200}, status: 200 }
    end
  end

  private
  def set_quotes
    @all_quotes = [
      { text: "I read <i>What We Were Promised</i> in a state of enchantment... Compassionate and heartbreaking, funny and wise, local and universal, What We Were Promised marks the arrival of an inspiring new voice.", author: "Chloe Benjamin", author_description: "best-selling author of The Immortalists and The Anatomy of Dreams"}, 
      { text: "Lucy Tan brings to vibrant life the self-made, newly cosmopolitan Zhens, who have gone from the tea fields and silk factories of small town China to the luxury high rises of Shanghai in one generation. Abounding in insight and deftly told, What We Were Promised is a story both sweeping and intimate, as this most modern of families discovers they must confront their past in order to find their future.", author: "Maggie Shipstead", author_description: "best-selling author of Astonish Me and Seating Arrangements"}, 
      { text: "Brilliant... a revelatory novel about the ways that we learn to become and reinvent who we are. Lucy Tan has an exquisite talent for depicting the painful gravity of lost possibilities, even in a story that moves forward with such momentum that you can’t look away.", author: "Danielle Evans", author_description: "PEN award-winning author of Before You Suffocate Your Own Fool Self"}, 
      { text: "Skillful... An immigrant story but one that also delves into the subject of going back to one's homeland. Tan humanizes each and every one of her characters.", author: "Weike Wang", author_description: "author of Chemistry"}, 
      { text: "A big, beautiful novel... Dazzling.", author: "Hannah Pittard", author_description: "author of Visible Empire and Listen To Me"}, 
      { text: "Lucy Tan explores the identities, memories, and emotional universes of her interlocking characters with effortless control and beauty. It is a quietly brilliant book, and a truly singular debut.", author: "Arna Bontemps Hemenway", author_description: "PEN award-winning author of Elegy on Kinderklavier"}, 
      { text: "From its first page the novel promises a mix of emotion and intellect, plot and cultural critique, and it delivers... By the end of What We Were Promised you will agree that the real promise belongs to its debut author. Put Lucy Tan on your literary radar now.", author: "Matthew Salesses", author_description: "best-selling author of The Hundred Year Flood"},
      { text: "How do we cope with what we’ve lost, whether a cherished keepsake, our first love, the growing child who no longer needs us, or even our own country? In this moving family saga set against the backdrop of a changing China, Lucy Tan writes with poignancy, power, and remarkable wisdom about the losses that can limit us but that can also present opportunities for self-reflection and reinvention. This is a beautifully rendered debut with vivid characters who will stay with readers long after the last satisfying page.", author: 'Judith Claire Mitchell', author_description: 'author of A Reunion of Ghosts'}
    ]
  end

  def set_reviews
    @reviews = [
      {text: "<i>What We Were Promised</i> glows through its intimate, skillful prose. Tan’s debut is a beautiful reckoning with the ever-changing definition of “home” – what it means to have, lose and find family again.", pub: "USA Today"},
      {text: "A luminous family saga.", pub: "Entertainment Weekly"},
      {text: "Tan's talent as a storyteller clearly shines through her strong plot lines and characterization; readers will want to know more about each well-crafted player in the story . . . . A novel of class, culture, and expectations; readers who enjoyed works like Kevin Kwan's Crazy Rich Asians will likely find Tan's surprising and down-to-earth tale an entertaining read.", pub: "Library Journal"},
      {text: "Against a contemporary global backdrop, made empathic with a multigenerational family saga, embellished with timeless servant/master (and mistress) class conflict, Tan’s debut will be entertaining – and enlightening – savvy cosmopolitan readers throughout the summer and beyond.", pub: "Christian Science Monitor"},
      {text: "The real joy of this book is getting lost in the characters, some of whom will remain with you long after you have finished the novel. Lucy Tan is an author to watch.", pub: "Omnivorous: The Amazon Book Review"},
      {text: "As the narrative jumps across decades and continents, it throws the rural villages and urban skylines, as well as the lives of locals and aloof ex-patriates into sharp relief.", pub: "TIME"},
      {text: "Tan examines the tension behind the facade of the moneyed lifestyle in a still-evolving post-Mao Shanghai, where everyone seems to be an expat in their own country.", pub: "Kirkus Reviews"},
      {text: "Tan’s novel is a vivid family chronicle, a compelling mystery, and an incisive look at wealth and privilege among Chinese-born, American-educated citizens.", pub: "Publishers Weekly"},
      {text: "With its measuring of expectation against reality, <i>What We Were Promised</i> establishes Tan as a new talent with a sharp eye for the intricacies of human relationships.", pub: "Shelf Awareness"},
      {text: "Tan’s first novel is beautiful and compassionate as it explores how identity is reinvented and the importance of confronting the past to move into the future.", pub: "Booklist"}
    ]
  end

  def pub_image(publication)
    lookup = {
      "Business Insider" => "data:image/svg+xml;base64,PHN2ZyBhcmlhLWxhYmVsbGVkYnk9InRpdGxlIGRlc2MiIHJvbGU9ImltZyIgdmlld0JveD0iMCAwIDEwMyAzMyIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0idGhlc3ZnIiBjbGFzcz0ic3ZnLWljb24gbG9nby1CSS1pY29uIj48dGl0bGUgaWQ9InRpdGxlIj5CdXNpbmVzcyBJbnNpZGVyIExvZ288L3RpdGxlPjxkZXNjIGlkPSJkZXNjIj5Mb2dvIGZvciBCdXNpbmVzcyBJbnNpZGVyIG92ZXIgYSB0cmFuc3BhcmVudCBiYWNrZ3JvdW5kLjwvZGVzYz48ZyBjbGFzcz0ibG9nby1CSSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNNy45ODQgMzJoMi4zOTZWMTkuMkg3Ljk4NHpNMTYuNzY3IDMxLjgwOGgyLjE0NnYtOC4wNzZMMjcuOTQ2IDMyVjE5LjM5MmgtMi4xNHY3LjkzOGwtOS4wMzktOC4xM3pNMzIuODQ1IDI4LjcwOGMxLjE2OC45MSAyLjU3IDEuNDM2IDQuMDczIDEuNDM2IDEuNDY0IDAgMi40OTEtLjUwNCAyLjQ5MS0xLjYxNyAwLS45Ny0uNjU1LTEuMzUtMS44MDItMS43NzVsLTEuODU3LS42NDVjLTEuNzEyLS42MDgtMy4wMTQtMS40OTYtMy4wMTQtMy41MzcgMC0yLjE4MyAxLjk3MS0zLjM3IDQuMzI4LTMuMzcgMS40NDQgMCAyLjc2LjM2MyAzLjc4OCAxLjAwNnYyLjE2NWMtMS4wNjktLjc5LTIuMjM5LTEuMzM0LTMuNzQyLTEuMzM0LTEuMjk0IDAtMi4yNjEuNDgzLTIuMjYxIDEuNDkgMCAuOTEuNjA3IDEuMjc0IDEuNjc2IDEuNjRsMi4wNjkuNzI2YzIuMDA1LjcwNSAyLjkyNSAxLjc5OCAyLjkyNSAzLjU5NiAwIDIuMjYyLTEuOTkgMy41MTEtNC42MDEgMy41MTEtMS43MTYgMC0zLjE3NS0uNDgtNC4wNzMtMS4wODZ2LTIuMjA2ek00Ny4xMDkgMzJoMi4zOTVWMTkuMmgtMi4zOTV6TTYwLjc0IDMwLjA2M2MyLjcgMCA0LjE0My0xLjczMiA0LjE0My00LjQ2NiAwLTIuNzU0LTEuNDQ0LTQuNDgtNC4xNDMtNC40OGgtMi42N3Y4Ljk0NmgyLjY3ek01NS44OSAxOS4yaDQuOTNjMy43OTUgMCA2LjI0OSAyLjUgNi4yNDkgNi4zOTcgMCAzLjktMi40NTQgNi40MDMtNi4yNDkgNi40MDNoLTQuOTNWMTkuMnpNNzkuMDQ3IDE5LjJ2MS45MTdINzMuMjV2My4wOGg1LjE5OXYxLjg5NWgtNS4ydjMuOTcxaDUuNzk4VjMyaC03Ljk4NVYxOS4yek04Ny41NDkgMjQuOTk2aDIuMzc3YzEuNDA3IDAgMi4yLS43NzIgMi4yLTEuOTU5cy0uNzkzLTEuOTYtMi4yLTEuOTZoLTIuMzc3djMuOTJ6bTAgMS44MVYzMmgtMi4xMTVWMTkuMmg0LjUzMmMyLjU4NCAwIDQuMjU2IDEuMzMxIDQuMjU2IDMuODM3IDAgMi4xNDMtLjkyOCAzLjM3NC0yLjkwNSAzLjY5TDk1LjgxNCAzMmgtMi40MDZsLTQuMzU0LTUuMTkzSDg3LjU1ek03LjE0NyA2LjU5Yy45MzctLjM0MyAxLjY2Ny0xLjM3MiAxLjY2Ny0yLjc4NyAwLTIuMzU4LTEuNjY3LTMuNTgtNC4zMzQtMy41OEgwdjEzLjE2M2g0Ljg5NmMyLjY2NyAwIDQuMzM0LTEuMzA4IDQuMzM0LTMuNzczIDAtMS4zOTQtLjg3NS0yLjYxNi0yLjA4My0zLjAyM3ptLTUuMDQzLS44MzZWMi4xNTNINC40NmMxLjQ4IDAgMi4yNzEuNTM2IDIuMjcxIDEuNzc5IDAgMS4yNDMtLjc5MiAxLjgyMi0yLjI3MSAxLjgyMkgyLjEwNHptMCAxLjg0NGgyLjc1YzEuNDYgMCAyLjI1MS43MjggMi4yNTEgMS45MjkgMCAxLjE3OS0uNzkyIDEuOTMtMi4yNSAxLjkzaC0yLjc1di0zLjg2ek0xOS4wMDUgMTMuNmMzLjA2MyAwIDUuMTI2LTEuODQ0IDUuMTI2LTUuNDQ1Vi4yMjNoLTIuMTY3djcuNjc0YzAgMi41My0xLjA0MiAzLjcxLTIuOTU5IDMuNzFzLTIuOTU4LTEuMTgtMi45NTgtMy43MVYuMjIzSDEzLjg4djcuOTFjMCAzLjYyMyAyLjA4MyA1LjQ2NyA1LjEyNSA1LjQ2N3ptMTAuMjI4LTEuMTU4Yy44OTYuNjQ0IDIuMzU1IDEuMTU4IDQuMDYzIDEuMTU4IDIuNjA1IDAgNC41ODQtMS4zMyA0LjU4NC0zLjczIDAtMS45MDgtLjkxNi0zLjA2Ni0yLjkxNy0zLjgxNmwtMi4wNjItLjc3MmMtMS4wNjMtLjM4NS0xLjY2Ny0uNzcxLTEuNjY3LTEuNzM2IDAtMS4wNzIuOTU4LTEuNTg2IDIuMjUtMS41ODYgMS41IDAgMi42NjcuNTc4IDMuNzMgMS40MTVWMS4wOEMzNi4xOTMuMzk1IDM0Ljg4LjAwOSAzMy40NDIuMDA5Yy0yLjM1NCAwLTQuMzEzIDEuMjY1LTQuMzEzIDMuNTggMCAyLjE2NSAxLjI5MiAzLjEwOCAzIDMuNzUxbDEuODU1LjY4NmMxLjE0Ni40NSAxLjc5Mi44NTggMS43OTIgMS44ODcgMCAxLjE3OS0xLjAyMSAxLjcxNS0yLjQ4IDEuNzE1LTEuNSAwLTIuODk2LS41NTgtNC4wNjMtMS41MjJ2Mi4zMzZ6TTQ1LjYyMy4yMjNoLTIuMTY2djEzLjE2MmgyLjE2NlYuMjIzem02LjE4MiAxMy4xNDZoMi4wODhWNC44MDZsOC43ODggOC43NjdWLjIwM2gtMi4wODJWOC42Mkw1MS44MDUgMHYxMy4zNjl6TTc2LjIyMi4yMjZ2MS45NzFoLTUuNjI2djMuMTY4aDUuMDQ1djEuOTQ5aC01LjA0NXY0LjA4M2g1LjYyNnYxLjk5MmgtNy43NVYuMjI2aDcuNzV6bTUuMDQ1IDEyLjIwN2MuODk2LjY0NCAyLjM1NCAxLjE1OCA0LjA2MyAxLjE1OCAyLjYwNCAwIDQuNTg0LTEuMzI5IDQuNTg0LTMuNzMgMC0xLjkwOC0uOTE3LTMuMDY1LTIuOTE3LTMuODE2bC0yLjA2My0uNzcxYy0xLjA2My0uMzg2LTEuNjY3LS43NzItMS42NjctMS43MzcgMC0xLjA3Mi45NTgtMS41ODYgMi4yNS0xLjU4NiAxLjUgMCAyLjY2Ny41NzkgMy43MyAxLjQxNVYxLjA3MkM4OC4yMjYuMzg2IDg2LjkxMyAwIDg1LjQ3NSAwYy0yLjM1NCAwLTQuMzEzIDEuMjY1LTQuMzEzIDMuNTggMCAyLjE2NSAxLjI5MiAzLjEwOCAzIDMuNzUxbDEuODU1LjY4NmMxLjE0Ni40NSAxLjc5Mi44NTggMS43OTIgMS44ODcgMCAxLjE3OS0xLjAyIDEuNzE1LTIuNDggMS43MTUtMS41IDAtMi44OTYtLjU1Ny00LjA2Mi0xLjUyMnYyLjMzNnptMTMuMDg2IDBjLjg5Ni42NDQgMi4zNTUgMS4xNTggNC4wNjMgMS4xNTggMi42MDUgMCA0LjU4NC0xLjMyOSA0LjU4NC0zLjczIDAtMS45MDgtLjkxNy0zLjA2NS0yLjkxNy0zLjgxNmwtMi4wNjMtLjc3MWMtMS4wNjItLjM4Ni0xLjY2Ny0uNzcyLTEuNjY3LTEuNzM3IDAtMS4wNzIuOTU5LTEuNTg2IDIuMjUtMS41ODYgMS41IDAgMi42NjguNTc5IDMuNzMgMS40MTVWMS4wNzJDMTAxLjMxMy4zODYgMTAwIDAgOTguNTYyIDBjLTIuMzU1IDAtNC4zMTMgMS4yNjUtNC4zMTMgMy41OCAwIDIuMTY1IDEuMjkyIDMuMTA4IDMgMy43NTFsMS44NTUuNjg2YzEuMTQ2LjQ1IDEuNzkyLjg1OCAxLjc5MiAxLjg4NyAwIDEuMTc5LTEuMDIxIDEuNzE1LTIuNDggMS43MTUtMS41IDAtMi44OTYtLjU1Ny00LjA2My0xLjUyMnYyLjMzNnoiLz48L2c+PC9zdmc+",
      "Medium" => "data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='138' height='27' viewBox='0 0 138 27'><path d='M130 27V16.96c0-3.26-.154-5.472-2.437-5.472-1.16 0-2.138.57-2.863 1.512.217.906.3 1.968.3 3.127 0 2.247.036 5.11 0 7.973 0 .472-.046.58.244.87L127 27h-8V16.96c0-3.297-.461-5.472-2.708-5.472-1.16 0-1.64.653-2.292 1.595V24.1c0 .472-.026.58.3.87L116 27h-8V11.56c0-.47-.07-.579-.36-.905L106 9h8v3.612c.906-2.537 2.437-4.112 5.372-4.112 2.682 0 4.494 1.466 5.255 4.257.834-2.392 3.008-4.257 6.053-4.257 3.588 0 5.32 2.626 5.32 7.627 0 2.392.036 5.11 0 7.973 0 .472.004.652.25.87L138 27h-8zm-27-3.045c0 .472-.149.617.178.906L105 27h-8v-4c-.906 2.465-2.956 4-5.637 4C87.775 27 86 24.39 86 19.461c0-2.391-.036-5 0-7.936 0-.471-.11-.58-.4-.87L84 9h8v9.628c0 3.225.269 5.4 2.298 5.4 1.16 0 2.086-.725 2.702-1.63V11.56c0-.471-.129-.58-.419-.906L95 9h8v14.955zM78.002.25A3.248 3.248 0 0 1 81.25 3.5 3.25 3.25 0 1 1 78.002.25zM75 27V11.56c0-.47.168-.579-.122-.905L73 9h8v15.1c0 .472-.01.678.24.9L83 27h-8zM64 11.706c-.507-.652-1.418-1.123-2.396-1.123-1.957 0-3.842 1.775-3.842 7.03 0 4.93 1.631 6.669 3.66 6.669.907 0 1.853-.436 2.578-1.378V11.706zm6 12.286c0 .47-.026.58.3.87L72 27h-8v-3.697C62.913 25.804 60.951 27 58.632 27 54.5 27 51.5 23.738 51.5 17.795c0-5.582 3.254-9.314 7.784-9.314 2.356 0 3.919 1.123 4.716 2.899V3.878c0-.471-.077-.617-.403-.906L62 1.305 70 .29v23.702zM43.9 16c.037-.471.037-.67.037-.815 0-4.747-.937-5.435-2.437-5.435-1.5 0-2.854.995-2.927 6.25h5.328zm-5.327 1c0 4.711 2.392 6.63 5.183 6.63 2.174 0 4.313-.943 5.509-3.335h.072c-.942 4.566-3.77 6.705-8.01 6.705-4.566 0-8.879-2.755-8.879-9.133 0-6.705 4.277-9.386 9.097-9.386 3.842 0 7.937 1.811 7.937 7.646 0 .109 0 .438-.036.873H38.573zM31.5 27h-12l2.39-2.646c.084-.084.11-.399.11-.87V7l-7.866 20L5.581 8.372C5.364 7.9 5.181 7.285 5 6.777V20.62c0 .58-.035.653.364 1.196L9 27H0l3.64-5.183c.399-.543.36-.616.36-1.196V6.27c0-.617.095-.69-.195-1.051L1 1h8.495l7.355 16.3L23.24 1h8.26l-2.2 2.75c-.326.326-.3.599-.3 1.106v18.629c0 .47.005.75.138.87L31.5 27z'></path></svg>",
      "BuzzFeed" => "data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1294.2 150'><g fill='rgb(34, 34, 34)'><path d='M0 147.3V0h65.7c28 0 42.4 17.9 42.4 37.5 0 18.3-11.5 30.9-25.4 33.8 15.9 2.4 28.3 17.7 28.3 36 0 22.3-14.6 40-42.8 40H0zM76.1 43.1c0-9.1-6.6-15.5-17.2-15.5H31.4v30.9h27.5c10.6 0 17.2-5.9 17.2-15.4zm2.9 59.8c0-9.3-6.6-16.8-18.8-16.8H31.4v33.6h28.9c11.6 0 18.7-6.2 18.7-16.8zM119.6 104.6v-64h28.2v63.1c0 12.7 7.7 21.9 22.7 21.9 14.8 0 22.6-9.2 22.6-21.9V40.6h28.1v63.9c0 26.8-16.1 45.6-50.6 45.6s-51-19-51-45.5zM230.5 147.3v-21l48.1-61.2h-48.1V40.6h86.3v20.1l-49 62.1h49.9v24.5h-87.2zM326.9 147.3v-21L375 65.1h-48.1V40.6h86.3v20.1l-49 62.1h49.9v24.5h-87.2zM424.6 147.3V0h102.2v27.6H456v30.9h53.3v27.6H456v61.2h-31.4zM517.2 93.9c0-30.9 23-55.9 55.2-55.9 32 0 53.4 23.9 53.4 58.5v6.6h-79.3c2 13 12.6 23.9 30.7 23.9 9.1 0 21.4-3.8 28.3-10.4l12.6 18.6c-10.6 9.7-27.4 14.8-43.9 14.8-32.5 0-57-21.9-57-56.1zM572.4 61c-17.4 0-25 12.1-26.1 22.7h52.6c-.9-10.2-8-22.7-26.5-22.7zM633.4 93.9c0-30.9 23-55.9 55.2-55.9 32 0 53.4 23.9 53.4 58.5v6.6h-79.3c2 13 12.6 23.9 30.7 23.9 9.1 0 21.4-3.8 28.3-10.4l12.6 18.6c-10.6 9.7-27.4 14.8-43.9 14.8-32.5 0-57-21.9-57-56.1zM688.6 61c-17.4 0-25 12.1-26.1 22.7h52.6c-.9-10.2-8-22.7-26.5-22.7zM752.3 147.5V40.4h43c33.7 0 58 20.2 58 53.5 0 33.2-24.2 53.6-57.8 53.6h-43.2zM826 93.9c0-16.6-10-30.4-29.6-30.4H779v60.9h17.4c18.7 0 29.6-14.6 29.6-30.5z'></path></g><g fill='rgb(238, 51, 34)'><path d='M871.3 130.1l9.4-1V58.6l-9.4-.8V42h36.1L945 98.5v-39l-10.4-1.6V42h35.2v15.8l-7.9 1.6v85.8h-15.2l-49.4-74.1V128l15.5 2.1v15.2h-41.6v-15.2zM1048.9 61.4c-1.7-4.5-3.5-4.8-8.6-4.8h-24.6v29.9h8.1c3.6 0 5.4-1.2 6.1-4l2.6-9.7h9.2v39.3h-9.4l-2.8-10.1c-1-3.3-2.6-4-6.3-4h-7.6v31.9h25.9c7.8 0 8.7-.7 10.7-5.6l6.6-17.2h11.1v38.1h-89.1V130l9.7-1.3V58.6l-9.7-.8V42h84.2v34.7h-10.2l-5.9-15.3zM1145.5 94.6l-16.2 51.7h-20.5l-26.1-88-6.9-.5V42h41.1v15.8l-7.9.7 16 55 12.4-41.9-4.3-13.2-6.4-.5V42h38.3v15.8l-6.8.7 17.2 55 13.2-52.7-9.2-3V42h33v15.8l-7.3 2.5-23.4 86h-19.8l-16.4-51.7zM1232.7 136.7l-2.3 8.6h-12.2v-34h13.7c4 16.8 13.5 21.5 22.8 21.5 10.1 0 15.8-4.1 15.8-12.7 0-7.8-8.6-11.2-23.6-16.3-16.5-5.4-28.9-13.9-28.9-32.4 0-20.3 16-31 32.5-31 9.1 0 18.3 3.5 23.1 9.1l2.1-7.4h12.1v29.2h-13.2c-2.5-10.6-10.7-16.3-21.1-16.3-7.6 0-13 3.5-13 10.1 0 8.9 9.1 11.6 22.1 15.8 17.2 5.9 31.7 12.9 31.7 32.7 0 22.3-18.3 34-35.5 34-10.1-.2-19.7-3.6-26.1-10.9z'></path></g></svg>",
      "New York Post" => "data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 386.999 57.708'><g><path fill='rgb(33, 31, 32)' d='M260.122 1.337h-15.075l-6.11 4.582 1.05-4.678h-14.924l-2.41 2.142c-.606-.352-1.85-1.077-2.49-1.503-.95-.528-3.063-.543-3.302-.543h-23.176l-3.172 2.467c-.807-.734-2.848-2.384-5.393-2.924-4.6-1.087-5.797-.892-7.286-.818-.452.023-.916.046-1.453.046-3.27 0-6.803 1.116-8.413 1.693l.063-.562-15.117.1-6.363 5.09-.17-5.09h-14.734l-3.33 2.462.932-2.463h-13.205l-5.35 3.845-.166-3.845H97.312l-4.173 3.11-.33-3.205H57.162l-.36.19.098-.197-13.5.103-4.24 3.08-.585-3.176H24.377l-11.65 9.32L0 57.33h12.562l6.574-4.845.692 4.845h12.24l1.773-1.495.518.048.87 1.447h24.245l5.368-3.927-.64 3.927h12.197l7.436-5.205-1.24 5.205H95.04l12.462-9.37 14.91-30.543 2.317 19.816-5.66 20.097h13.71l8.96-6.878c.867 1.706 3.543 6.14 8.242 6.868 1.536.288 4.044.383 4.15.387h.02c1.903 0 3.073-.017 5.025-.388 2.295-.436 3.55-.97 5.632-1.86l.16-.067c2.095-.895 4.745-2.516 6.233-3.466l-1.098 5.403h12.977l4.963-3.412-.853 3.412h27.297l5.95-4.288 1.4 4.288h15.082l11.873-9.52-5.408-25.333 16.735-21.14z'></path><path fill='rgb(35, 31, 32)' d='M358.936 1.243l-2.583 1.78c-.646-.395-2.13-1.276-3.27-1.738-3.04-1.23-5.054-1.317-8.26-1.27-3.89.06-6.575.467-10.473 2.523-1.724.91-3.816 2.65-4.783 3.49-.648-1.1-2.108-3.305-3.793-4.07-3.877-1.79-6.352-1.787-10.376-1.66-3.702.118-5.85.57-9.183 1.933-2.318.95-5.233 2.99-6.413 3.847-.458-.806-1.32-2.257-1.998-3-.956-1.275-3.472-1.772-3.756-1.824l-23.473-.01L259.68 9.9l-13.206 47.43H259.9l12.02-9.21 1.626-4.97c.74.013 2.35.02 3.53-.105.86-.093 1.977-.318 2.73-.483-.28 1.803-.738 6.004.582 8.594 2.47 4.844 6.862 5.83 11.237 6.173 1.008.087 1.903.13 2.735.13 2.982 0 5.21-.555 8.275-1.576 3.104-1.035 7.08-3.61 8.403-4.5.737.92 2.563 3.07 4.28 4.073 2.443 1.43 4.23 1.604 6.944 1.87.972.097 1.838.143 2.653.143 2.828 0 5.13-.537 8.5-1.98 3.238-1.367 8.052-4.45 10.305-5.94l-1.892 7.404h12.745l11.84-9.027 8.14-28.485 9.744-8.326 2.7-9.87h-28.06z'></path><path fill='rgb(255,255,255)' d='M54.715 2.85h-9.282l-6.015 19.87L37.23 2.85H25.38L13.8 45.93l-.063.24h9.09L29.6 22.92l2.563 23.25h10.15L54.646 3.09M117.528 2.85L107.34 23.41l1.982-20.35.02-.207H99.177l-9.61 20.13L91.54 3.06l.02-.21H58.105L46.338 45.93l-.065.24h22.892l2.78-7.946h-12.69l2.92-10.214H73.71l2.385-7.946H64.37l2.907-9.08H79.61l-2.445 34.983-.014.202H87.5l10.928-23.316L96.06 46.17h9.976l20.86-43.047.13-.272M185.83 25.02l.096.015 3.096-10.834h-.052c.04-.197.13-.543.216-.88.427-1.666 1.223-4.765.81-6.347-.938-4.38-3.998-5.2-5.257-5.35-2.88-.54-3.653-.546-5.718-.566l-.652-.006c-1.444-.014-2.37-.027-3.908.195-2.304.332-3.596.63-5.636 1.625-1.353.66-2.082 1.13-3.254 2.105-2.145 1.786-4.304 5.567-4.412 5.77l-7.57 27.82c-.03.146-.73 3.642.405 5.435.62.98 1.273 1.38 2.176 1.93l.344.21c1.924 1.194 3.345 1.394 5.497 1.694l.252.036c1.028.145 1.897.212 2.735.212 1.258 0 2.44-.154 3.943-.402 2.072-.343 3.342-.582 5.347-1.528 1.57-.74 2.428-1.3 3.824-2.486 1.6-1.36 3.68-4.134 3.84-4.634h.004c1.057-3.774 3.83-13.643 3.96-13.97l-.084-.04zM222.435 6.776c-.23-.89-.492-1.39-1.08-2.063-.608-.7-1.1-.975-1.853-1.368-.43-.225-1.13-.473-1.16-.483l-23.473-.01L183.1 45.93l-.065.24h10.604l5.107-17.404 4.364-.003c.358.067 1.338.35 1.566.84.155.333.044.977-.012 1.196l-3.972 15.132-.063.237h11.17l4.577-16.21c.03-.093.705-2.266-.02-3.378-.358-.546-.718-.772-1.215-1.085l-.168-.106c-.38-.24-.92-.468-1.3-.614.564-.255 1.56-.723 2.243-1.145l.29-.177c.688-.42 1.184-.722 1.825-1.363.413-.412.94-1.126.964-1.156l3.44-11.622c.013-.064.248-1.58 0-2.536M292.205 28.69c.54-.714.777-1.296 1.054-1.97.11-.277.23-.572.384-.9 2.527-5.47 4.347-14.895 4.36-14.968.022-.076.58-1.87.19-3.034-.07-.29-.092-.56-.108-.822-.03-.4-.06-.816-.28-1.292-.36-.784-.757-1.147-1.373-1.673-.465-.397-.836-.573-1.268-.777-.222-.104-.463-.22-.748-.378l-.044-.024h-22.42l-12.05 43.08-.067.24h10.415l3.972-13.047c.695.03 3.72.162 6.293.162 1.72 0 2.91-.058 3.533-.172 1.65-.29 2.717-.653 4.253-1.456 1.652-.86 2.744-1.43 3.905-2.966M327.895 7.63c-.054-.223-.1-.445-.146-.663-.222-1.064-.43-2.07-1.372-2.584-1.145-.763-2.05-1.366-3.52-1.9-1.92-.695-3.192-.757-5.118-.85l-.235-.01c-.685-.035-1.237-.05-1.74-.05-1.37 0-2.54.12-4.168.43-1.71.326-2.685.57-4.294 1.24-1.924.804-3.07 1.408-4.778 2.87-1.213 1.035-2.707 2.972-2.77 3.054l-8.457 29.23c-.015.152-.342 3.772.882 5.607.74 1.112 1.447 1.557 2.517 2.23 1.766 1.113 3.133 1.29 5.022 1.54.233.03.476.06.727.096 1.21.166 2.154.24 3.063.24 1.064 0 2.11-.098 3.612-.336 2.195-.348 3.438-.61 5.35-1.53 1.622-.778 2.52-1.383 3.827-2.583 1.546-1.418 3.306-4.13 3.455-4.625h.002c1.107-3.695 4.008-13.357 4.15-13.687l-.09-.045.103.014 3.285-11.59h-.052c.032-.142.09-.358.147-.57.356-1.317 1.015-3.77.595-5.526'></path><path fill='rgb(35, 31, 32)' d='M316.247 10.71c-.237-.474-1.234-.728-2.03-.857-.255-.042-.506-.063-.748-.063-1.02 0-1.826.362-2.774.836-.807.404-1.567 2.102-1.61 2.197l-6.622 22.712c-.025.11-.583 2.71.97 3.434.71.267 1.494.512 2.392.512.175 0 .352-.01.53-.028.84-.096 1.527-.452 2.08-.738l.26-.134c.826-.445 1.134-1.34 1.318-1.876.033-.095.07-.206.1-.278h.007c.198 0 .266 0 5.67-19.72l.837-3.368c.022-.05.604-1.254-.38-2.63'></path><path fill='rgb(255,255,255)' d='M145.605 17.765l-.92-14.913h-10.8l3.43 25.523-4.783 17.795h10.414l4.95-17.133L165.67 2.852h-10.675M234 16.506l3.824-13.655H226.84l-12.713 43.077-.072.242h11.46l5.583-18.4 3.358 18.245.027.154h12.025l-4.946-23.977 15.08-19.036.24-.306h-10.5M360.007 2.85l-2.088 7.757h6.71l-9.956 35.322-.068.24h10.325l10.025-35.185h7.188l2.31-7.892.07-.242M349.434 25.256c-.732-1.103-1.394-1.758-2.156-2.516-.334-.33-.69-.683-1.08-1.102-.59-.635-1.1-1.127-1.587-1.6-.647-.63-1.258-1.222-2-2.083-.272-.316-.528-.573-.773-.823-.544-.55-1.013-1.025-1.377-1.882-.44-1.04-.73-1.725-.55-2.816.11-.665.194-1.063.613-1.51.32-.34.626-.42 1.086-.542l.245-.066c.613-.172.95-.256 1.533-.184.68.085 1.08.287 1.593.797.415.413.586.712.708 1.232.102.445.05.763-.02 1.164-.028.175-.06.36-.08.572l-.007.06c-.067.694-.108 1.113-.27 1.807-.157.66-.557 1.666-.56 1.676l-.104.26h10.446l.04-.138c.006-.024.688-2.433 1.042-3.98.102-.442.208-.823.31-1.182.237-.842.442-1.57.453-2.643v-.13c.016-1.618.026-2.786-.882-4.23-.64-1.015-1.23-1.498-2.232-2.138-1.007-.644-1.726-.83-2.812-1.115l-.174-.045c-1.187-.31-1.934-.366-3.065-.45l-.795-.06c-.802-.064-1.435-.114-2.106-.114-.636 0-1.258.047-1.958.147-.626.09-1.077.21-1.553.338-.28.076-.57.154-.92.233-.424.095-.784.153-1.134.208-.606.098-1.18.19-1.92.463-1.177.436-1.84.898-2.76 1.54l-.402.278c-1.027.71-1.608 1.14-2.484 2.01l-.236.23c-.678.67-1.168 1.15-1.688 2.08-.45.808-.612 1.376-.838 2.16l-.124.433c-.29.997-.438 1.518-.573 2.486l-.053.377c-.144.99-.246 1.708-.038 2.805.15.807.375 1.28.685 1.936l.178.378c.627 1.353 1.286 2.17 2.053 3.115.313.39.64.793.994 1.27.893 1.2 1.4 1.878 2.37 3.036.454.54.84.95 1.21 1.346.402.428.783.833 1.25 1.396.166.2.317.373.46.535.35.396.626.71.94 1.238l.08.135c.433.72.693 1.155.844 1.98.164.896.144 1.43-.09 2.28-.194.7-.326 1.12-.807 1.62-.576.602-1.074.85-1.972.985-.29.043-.527.062-.746.062-.527 0-.977-.125-1.5-.42-.59-.33-.88-.552-1.155-1.06-.267-.492-.265-.864-.262-1.427v-.186c0-.498.096-.828.215-1.245.053-.184.107-.38.16-.605.158-.692.468-1.775.47-1.787l.068-.24h-10.78l-.05.116c-.015.037-.382.926-.57 1.527-.226.707-.32 1.19-.44 1.804-.04.208-.083.428-.134.675-.09.43-.19.804-.282 1.155-.217.822-.405 1.532-.383 2.576.025 1.23.133 2.033.677 3.287.414.952.752 1.544 1.556 2.33.68.664 1.23.93 1.995 1.297l.322.156c1.58.77 2.604.98 4.407 1.247.86.127 1.605.186 2.35.186.857 0 1.666-.074 2.805-.186 2.232-.22 3.508-.403 5.53-1.146 1.506-.553 2.36-.98 3.82-1.91 1.323-.843 2.126-1.377 3.252-2.584 1.128-1.208 1.688-2.037 2.398-3.548.78-1.66 1.014-2.673 1.246-4.31.305-2.163.438-3.385-.1-5.373-.416-1.528-.94-2.315-1.822-3.647'></path><path fill='rgb(35, 31, 32)' d='M178.225 10.67c-.557-.63-1.172-.74-1.92-.82-.687-.075-1.088.027-1.766.194-.62.153-.962.27-1.476.59-.437.276-.963.86-.985.886l-7.04 24.095c-.016.052-.386 1.278-.09 2.018.258.646.66.95 1.226 1.233.356.178.688.253 1.11.253.168 0 .34-.01.526-.023.11-.008.227-.016.395-.023.89-.04 1.53-.07 2.32-.597.57-.38.86-.694 1.196-1.294.095-.172.128-.42.157-.64.01-.06.02-.144.032-.21h.024c.197 0 .264 0 5.668-19.723l.842-3.374c.017-.04.43-.988.295-1.628-.09-.43-.27-.66-.515-.938M210.428 12.375c-.018-.11-.026-.217-.034-.32-.032-.367-.064-.715-.405-1.022-.297-.267-.55-.352-.945-.424-.28-.052-.884-.006-.886-.004h-4.206l-3.163 10.16-.074.244h5.686l.035-.014c.037-.016.915-.378 1.377-.79.548-.49.742-.974.967-1.534.065-.162.134-.334.216-.517.396-.883.543-1.482.748-2.31l.115-.464c.08-.323.177-.606.27-.88.23-.68.43-1.267.298-2.125'></path><path d='M286.62 11.34c-.264-.332-.536-.455-.853-.597-.08-.036-.162-.074-.252-.118-.534-.262-1.248-.394-2.124-.394-1.463 0-2.865.367-2.924.383l-.105.027-4 13.912-.042.143.13.073c.024.015.636.366 1.082.49.322.092.608.13.95.13.15 0 .298-.006.462-.013.11-.006.224-.01.35-.014l.186-.004c.73-.02 1.21-.032 1.95-.29 1.086-.376 1.728-.864 2.457-1.864.41-.565.555-1.034.722-1.577.07-.227.146-.47.247-.737.783-2.073 1.607-5.474 1.612-5.498.014-.047.353-1.17.385-1.938.01-.19.033-.37.053-.542.068-.542.13-1.054-.282-1.57'></path><path fill='none' d='M0 0h387v57.708H0z'></path></g></svg>",
      "The Washington Post" => "https://www.washingtonpost.com/pb/resources/img/twp-masthead-415x57.svg",
      "Jetsetter" => "data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 835.6 98.4'><g><path fill='rgb(0,0,0)' d='M16.8 69c1.1 9.2 6.1 14.6 15.2 14.6 10.9 0 16.2-6.2 16.2-19.7V1.4h16.2v62.5c0 22.7-12.4 34.5-32 34.5C11.8 98.4 1.4 85.9 0 69zM160.3 1.4v14.3h-46.5v25.2H156V55h-42.1v27.3h46.5v14.5H98V1.4zm24.1 0H264v14.3h-31.7v81.1h-16.2V15.7h-31.7zm108.9 72.1c3.9 11.5 14 17.6 27 17.6 13.7 0 23.8-7 23.8-19.1 0-8.4-4.3-14.3-16.5-17.7l-18.2-5.1c-13.4-3.7-21.9-9.8-21.9-23.3C287.6 9.6 301.3 0 317.7 0c18.6 0 29.8 9.8 33.6 23.9h-7.9c-3.6-10.1-11.8-16.8-25.6-16.8-12.4 0-22.5 6.5-22.5 18.2 0 10.1 6.5 13.7 18.2 16.9l16 4.7C345.2 51.3 352 59 352 71.6c0 16.8-13.7 26.6-31.5 26.6-17.6 0-31.5-8.9-35.3-24.7zM442.2 1.4v7.3h-51.4V44h46.6v7.3h-46.6v38.2h51.4v7.3H383V1.4zm25.8 0h77.7v7.3h-35v88.1h-7.9V8.7H468zm99.7 0h77.7v7.3h-35v88.1h-7.9V8.7h-34.8zm166.4 0v7.3h-51.4V44h46.6v7.3h-46.6v38.2h51.4v7.3h-59.2V1.4zm41.2 53.3v42.1h-7.9V1.4h33.7c18.6 0 30 9.3 30 26.7 0 15.5-9.2 24.4-24.2 26.3l28.7 42.4h-9.2l-28.3-42.1zm0-7h25.5c14.6 0 22.5-7.3 22.5-19.6 0-12.6-7.9-19.6-22.5-19.6h-25.5z'/></g></svg>"
    }
    if lookup.include? publication
      return lookup[publication]
    else
      return publication
    end
  end

end
