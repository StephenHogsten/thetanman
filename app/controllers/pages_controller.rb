class PagesController < ApplicationController
  def home
  end

  def bio
  end

  def currently_reading
    @books = {
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

  def wwwp
  end

  def news
  end

  def events
  end

  def other_work
  end

  def contact
  end

  #POST /contact
  # TODO: throttle https://github.com/dryruby/rack-throttle
  def contact_send
    puts params
  end
end