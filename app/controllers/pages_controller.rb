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
  end

  def events
    @events = [
      {date: Date.new(2018, 3, 9), time: '3:00 - 4:15', title: "AWP in Tampa, FL", subtitle: "| Write What You Want to Know: Fiction Writers on Research", location: "Grand Salon B, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 3, 9), time: '4:30 - 5:45', title: 'AWP in Tampa, FL', subtitle: "| Understanding Novel Structure", location: "Florida Salon 1, 2, & 3, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 5, 19), time: '2:00 - 4:30', title: "Mochi Mag Presents: A Writers' Panel", location: "New York Public Library's 53rd St Branch, Manhattan, NY", link: "https://www.eventbrite.com/e/a-writers-panel-tickets-45326111620?aff=efbeventtix"},
      {date: Date.new(2018, 7, 12), title: 'Reading', subtitle: '| In conversation with Rumaan Alam', location: 'Barnes & Noble Upper East Side (86th Street), Manhattan, NY'},
      {date: Date.new(2018, 7, 17), title: 'Point Street Reading Series', location: 'Providence, RI'},
      {date: Date.new(2018, 7, 19), title: "Reading", subtitle: '| In conversation with Weike Wang', location: "Books Are Magic, Brooklyn, NY"},
      {date: Date.new(2018, 7, 24), time: '7:00 - 8:30pm', title: "Reading and Signing", location: "Livingston Public Library, Livingston, NJ", link: 'https://www.eventbrite.com/e/meet-the-author-lucy-tan-what-we-were-promised-tickets-46684340118'},
      {date: Date.new(2018, 8, 1), title: "Reading", subtitle: '| In conversation with Lillian Li', location: "Literati Bookstore, Ann Arbor, MI"},
      {date: Date.new(2018, 8, 31), time: "8/31 through 9/2", title: "AJC Decatur Book Festival", subtitle: "(more details to come)", location: "Decatur, GA"},
      {date: Date.new(2018, 9, 8), time: '7:00 PM', title: 'Reading with Stephen Hitchcock', location: 'New Dominion Bookshop, Charlottesville, VA'},
      {date: Date.new(2018, 9, 20), time: '7:00 PM', title: "Asian American Writers' Workshop", subtitle: "| Reading with Vanessa Hua and Crystal Hana Kim (more info to come)", location: "New York, NY"},
      {date: Date.new(2018, 10, 13), title: 'Wisconsin Book Festival ', subtitle: " (more details to come)", location: "Madison, WI"},
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
      { text: "Lucy Tan brings to vibrant life the self-made, newly cosmopolitan Zhens, who have gone from the tea fields and silk factories of small town China to the luxury high rises of Shanghai in one generation. Abounding in insight and deftly told, What We Were Promised is a story both sweeping and intimate, as this most modern of families discovers they must confront their past in order to find their future.", author: "Maggie Shipstead", author_description: "best-selling author of Astonish Me and Seating Arrangements"}, 
      { text: "Brilliant... a revelatory novel about the ways that we learn to become and reinvent who we are. Lucy Tan has an exquisite talent for depicting the painful gravity of lost possibilities, even in a story that moves forward with such momentum that you can’t look away.", author: "Danielle Evans", author_description: "PEN award-winning author of Before You Suffocate Your Own Fool Self"}, 
      { text: "I read What We Were Promised in a state of enchantment... Compassionate and heartbreaking, funny and wise, local and universal, What We Were Promised marks the arrival of an inspiring new voice.", author: "Chloe Benjamin", author_description: "best-selling author of The Immortalists and The Anatomy of Dreams"}, 
      { text: "Skillful... An immigrant story but one that also delves into the subject of going back to one's homeland. Tan humanizes each and every one of her characters.", author: "Weike Wang", author_description: "author of Chemistry"}, 
      { text: "A big, beautiful novel... Dazzling.", author: "Hannah Pittard", author_description: "author of Visible Empire and Listen To Me"}, 
      { text: "Lucy Tan explores the identities, memories, and emotional universes of her interlocking characters with effortless control and beauty. It is a quietly brilliant book, and a truly singular debut.", author: "Arna Bontemps Hemenway", author_description: "PEN award-winning author of Elegy on Kinderklavier"}, 
      { text: "From its first page the novel promises a mix of emotion and intellect, plot and cultural critique, and it delivers... By the end of What We Were Promised you will agree that the real promise belongs to its debut author. Put Lucy Tan on your literary radar now.", author: "Matthew Salesses", author_description: "best-selling author of The Hundred Year Flood"}
    ]
  end

end
