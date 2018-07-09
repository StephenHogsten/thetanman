class PagesController < ApplicationController
  before_action :set_quotes, only: [:home, :what_we_were_promised]

  def home
  end

  def bio
  end

  def currently_reading
    @books = {
      2018 => [
        {title: 'Dopesick: Dealers, Doctors, and The Drug Company That Addicted America', author: 'Beth Macy (Little Brown, August 2018)'},
        {title: 'Manhattan Beach', author: 'Jennifer Egan'},
        {title: 'Broken Harbor', author: 'Tana French'},
        {title: 'Then She Was Gone', author: 'Lisa Jewell'},
        {title: 'The Nakano Thrift Shop', author: 'Hiromi Kawakami'},
        {title: 'The Friend', author: 'Sigrid Nunez'},
        {title: 'The Incendiaries', author: 'R.O. Kwon (Riverhead, July 2018)'},
        {title: 'If You Leave Me', author: 'Crystal Hana Kim (William Morrow, August 2018)'},
        {title: 'Mother Tongues', author: 'Theodora Bishop'},
        {title: 'Mad Honey Symposium', author: 'Sally Wen Mao'},
        {title: 'Scrappy Little Nobody', author: 'Anna Kendrick'},
        {title: 'The Wonder', author: 'Emma Donoghue'},
        {title: 'Strange Weather in Tokyo', author: 'Hiromi Kawakami'},
        {title: 'Harry Potter and the Order of the Phoenix', author: 'J.K. Rowling'},
        {title: 'Talking as Fast as I Can', author: 'Lauren Graham'},
        {title: 'Number One Chinese Restaurant', author: 'Lillian Li (Holt, June 2018)'},
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
    
  end

  def news
    @news = [
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
        title: "Safety of Number Audio Recording Released",
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
        date: Date.new(2017, 9, 30),
        link: "https://soundcloud.com/jackson-tobin-922865676/episode-five-book-deal-w-lucy-tan",
        img_src: "https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/5a/38/3d/5a383d73-bcd3-088a-114c-863e59e18c7a/source/170x170bb.jpg",
        source: "Write & Eat Podcast",
        title: "Podcast Interview"
      }
    ]

  end

  def events
    @events = [
      {date: Date.new(2018, 3, 9), time: '3:00 - 4:15', title: "AWP in Tampa, FL", subtitle: "| Write What You Want to Know: Fiction Writers on Research", location: "Grand Salon B, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 3, 9), time: '4:30 - 5:45', title: 'AWP in Tampa, FL', subtitle: "| Understanding Novel Structure", location: "Florida Salon 1, 2, & 3, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 5, 19), time: '2:00 - 4:30', title: "Mochi Mag Presents: A Writers' Panel", location: "New York Public Library's 53rd St Branch, Manhattan, NY", link: "https://www.eventbrite.com/e/a-writers-panel-tickets-45326111620?aff=efbeventtix"},
      {date: Date.new(2018, 7, 12), time: '7:00 PM', title: 'Reading', subtitle: '| In conversation with Rumaan Alam', location: 'Barnes & Noble Upper East Side (86th Street), Manhattan, NY', link: 'https://stores.barnesandnoble.com/event/9780061936021-0'},
      {date: Date.new(2018, 7, 17), time: '7:00 - 9:00', title: 'Point Street Reading Series', location: 'Alchemy, Providence, RI', link: 'https://www.facebook.com/events/274337023142272/'},
      {date: Date.new(2018, 7, 19), time: '7:30 PM', title: "Reading", subtitle: '| In conversation with Weike Wang', location: "Books Are Magic, Brooklyn, NY", person: "Weike Wang", link: 'https://www.facebook.com/events/2080753235582528/'},
      {date: Date.new(2018, 7, 24), time: '7:00 - 8:30pm', title: "Reading and Signing", location: "Livingston Public Library, Livingston, NJ", link: 'https://www.eventbrite.com/e/meet-the-author-lucy-tan-what-we-were-promised-tickets-46684340118'},
      {date: Date.new(2018, 8, 1), time: '7:00 PM', title: "Reading", subtitle: '| In conversation with Lillian Li', location: "Literati Bookstore, Ann Arbor, MI", person: "Lillian Li", link: 'https://www.literatibookstore.com/event/fiction-literati-lucy-tan'},
      {date: Date.new(2018, 8, 31), time: "8/31 through 9/2", title: "AJC Decatur Book Festival", subtitle: "(more details to come)", location: "Decatur, GA"},
      {date: Date.new(2018, 9, 8), time: '7:00 PM', title: 'Reading with Stephen Hitchcock', location: 'New Dominion Bookshop, Charlottesville, VA', person: "Stephen Hitchcock", link: 'https://ndbookshop.com/events/lucy-tan-and-stephen-hitchcock/'},
      {date: Date.new(2018, 9, 20), time: '7:00 PM', title: "Asian American Writers' Workshop", subtitle: "| Reading with Vanessa Hua and Crystal Hana Kim (more info to come)", location: "New York, NY", people: ['Vanessa Hua', 'Crystal Hana Kim']},
      {date: Date.new(2018, 10, 12), title: 'Wisconsin Book Festival ', subtitle: " (date recently changed)", location: "Madison, WI"},
      {date: Date.new(2018, 10, 17), title: "The Guilded Leaf Writers at the Pavilion", location: "Carmel, Indiana"},
      {date: Date.new(2018, 10, 18), title: "The Guilded Leaf Book and Author Luncheon", location: "Carmel, Indiana"}
    ]
  end

  def other_work
  end

  def contact
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
      { text: "I read What We Were Promised in a state of enchantment... Compassionate and heartbreaking, funny and wise, local and universal, What We Were Promised marks the arrival of an inspiring new voice.", author: "Chloe Benjamin", author_description: "best-selling author of The Immortalists and The Anatomy of Dreams"}, 
      { text: "Lucy Tan brings to vibrant life the self-made, newly cosmopolitan Zhens, who have gone from the tea fields and silk factories of small town China to the luxury high rises of Shanghai in one generation. Abounding in insight and deftly told, What We Were Promised is a story both sweeping and intimate, as this most modern of families discovers they must confront their past in order to find their future.", author: "Maggie Shipstead", author_description: "best-selling author of Astonish Me and Seating Arrangements"}, 
      { text: "Brilliant... a revelatory novel about the ways that we learn to become and reinvent who we are. Lucy Tan has an exquisite talent for depicting the painful gravity of lost possibilities, even in a story that moves forward with such momentum that you can’t look away.", author: "Danielle Evans", author_description: "PEN award-winning author of Before You Suffocate Your Own Fool Self"}, 
      { text: "Skillful... An immigrant story but one that also delves into the subject of going back to one's homeland. Tan humanizes each and every one of her characters.", author: "Weike Wang", author_description: "author of Chemistry"}, 
      { text: "A big, beautiful novel... Dazzling.", author: "Hannah Pittard", author_description: "author of Visible Empire and Listen To Me"}, 
      { text: "Lucy Tan explores the identities, memories, and emotional universes of her interlocking characters with effortless control and beauty. It is a quietly brilliant book, and a truly singular debut.", author: "Arna Bontemps Hemenway", author_description: "PEN award-winning author of Elegy on Kinderklavier"}, 
      { text: "From its first page the novel promises a mix of emotion and intellect, plot and cultural critique, and it delivers... By the end of What We Were Promised you will agree that the real promise belongs to its debut author. Put Lucy Tan on your literary radar now.", author: "Matthew Salesses", author_description: "best-selling author of The Hundred Year Flood"}
    ]
  end

end
