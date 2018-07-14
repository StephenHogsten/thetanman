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

  def cocktails
  end

  def news
    @news = [
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
        title: "Reviwe: What We Were Promised"
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
    @events = [
      {date: Date.new(2018, 3, 9), time: '3:00 - 4:15', title: "AWP in Tampa, FL", subtitle: "| Write What You Want to Know: Fiction Writers on Research", location: "Grand Salon B, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 3, 9), time: '4:30 - 5:45', title: 'AWP in Tampa, FL', subtitle: "| Understanding Novel Structure", location: "Florida Salon 1, 2, & 3, Marriott Waterside, Second Floor"},
      {date: Date.new(2018, 5, 19), time: '2:00 - 4:30', title: "Mochi Mag Presents: A Writers' Panel", location: "New York Public Library's 53rd St Branch, Manhattan, NY", link: "https://www.eventbrite.com/e/a-writers-panel-tickets-45326111620?aff=efbeventtix"},
      {date: Date.new(2018, 7, 12), time: '7:00 PM', title: 'Reading', subtitle: '| In conversation with Rumaan Alam', location: 'Barnes & Noble Upper East Side (86th Street), Manhattan, NY', link: 'https://stores.barnesandnoble.com/event/9780061936021-0'},
      {date: Date.new(2018, 7, 17), time: '7:00 - 9:00', title: 'Point Street Reading Series', location: 'Alchemy, Providence, RI', link: 'https://www.facebook.com/events/274337023142272/'},
      {date: Date.new(2018, 7, 19), time: '7:30 PM', title: "Reading", subtitle: '| In conversation with Weike Wang', location: "Books Are Magic, Brooklyn, NY", person: "Weike Wang", link: 'https://www.facebook.com/events/2080753235582528/'},
      {date: Date.new(2018, 7, 24), time: '7:00 - 8:30pm', title: "Reading and Signing", location: "Livingston Public Library, Livingston, NJ", link: 'https://www.eventbrite.com/e/meet-the-author-lucy-tan-what-we-were-promised-tickets-46684340118'},
      {date: Date.new(2018, 8, 1), time: '7:00 PM', title: "Reading", subtitle: '| In conversation with Lillian Li', location: "Literati Bookstore, Ann Arbor, MI", person: "Lillian Li", link: 'https://www.literatibookstore.com/event/fiction-literati-lucy-tan'},
      {date: Date.new(2018, 8, 2), time: '6:00 PM', title: 'Reading & Discussion', subtitle: 'with Lillian Li', location: "Pages Bookshop, Detroit, MI", person: "Lillian Li"},
      {date: Date.new(2018, 8, 3), time: '4:00 PM', title: 'Author Visit', location: "Mountain Ridge Country Club, West Caldwell, NJ"},
      {date: Date.new(2018, 8, 31), time: "8/31 through 9/2", title: "AJC Decatur Book Festival", subtitle: "(more details to come)", location: "Decatur, GA"},
      {date: Date.new(2018, 9, 8), time: '7:00 PM', title: 'Reading with Stephen Hitchcock', location: 'New Dominion Bookshop, Charlottesville, VA', person: "Stephen Hitchcock", link: 'https://ndbookshop.com/events/lucy-tan-and-stephen-hitchcock/'},
      {date: Date.new(2018, 9, 20), time: '7:00 PM', title: "Asian American Writers' Workshop", subtitle: "| Reading with Vanessa Hua and Crystal Hana Kim (more info to come)", location: "New York, NY", people: ['Vanessa Hua', 'Crystal Hana Kim']},
      {date: Date.new(2018, 10, 12), title: 'Wisconsin Book Festival ', subtitle: " (date recently changed)", location: "Madison, WI"},
      {date: Date.new(2018, 10, 13), title: "Harrisburg Book Festival", location: "Harrisburg, PA"},
      {date: Date.new(2018, 10, 17), title: "The Guilded Leaf Writers at the Pavilion", location: "Carmel, Indiana"},
      {date: Date.new(2018, 10, 18), title: "The Guilded Leaf Book and Author Luncheon", location: "Carmel, Indiana"}
    ]
  end

  def other_work
    @articles = [
      {
        date: Date.new(2018, 7, 8),
        background: "tan",
        link: "https://lithub.com/on-falling-in-love-with-the-language-id-spent-my-whole-life-speaking/",
        img_src: '/lithub.png',
        source: "Literary Hub",
        title: "On Falling in Love with the Language I’ve Spoken My Entire Life"
      }
    ]
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
