INSERT INTO genres (name)
VALUES
  ('Science Fiction'),
  ('Action'),
  ('Southern Gothic Fiction'),
  ('Fantasy Fiction'),
  ('Fiction'),
  ('Non-Fiction');

INSERT INTO authors (name)
VALUES
  ('Frank Herbert'),
  ('Yukito Kishiro'),
  ('Harper Lee'),
  ('J.R.R. Tolkien'),
  ('George R. R. Martin'),
  ('F. Scott Fitzgerald'),
  ('George Orwell'),
  ('Gene Wolfe'),
  ('Alastair Reynolds'),
  ('Dan Simmons'),
  ('James Clear'),
  ('Colleen Hoover'),
  ('Mark Manson'),
  ('Robert Greene'),
  ('Robert T. Kiyosaki'),
  ('Dale Carnegie'),
  ('Stephen King'),
  ('Richard Dawkins'),
  ('Steven Erikson');

INSERT INTO books (title, year, cover_art_url, description, genre_id)
VALUES 
  ('Dune', 1965, 'https://i0.wp.com/www.tor.com/wp-content/uploads/2019/07/Dune-cover-1.jpg?type=vertical&ssl=1', 'Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the "spice" melange, a drug capable of extending life and enhancing consciousness. Coveted across the known universe, melange is a prize worth killing for...
  When House Atreides is betrayed, the destruction of Paul''s family will set the boy on a journey toward a destiny greater than he could ever have imagined. And as he evolves into the mysterious man known as Muad''Dib, he will bring to fruition humankind''s most ancient and unattainable dream.
  A stunning blend of adventure and mysticism, environmentalism and politics, Dune won the first Nebula Award, shared the Hugo Award, and formed the basis of what is undoubtedly the grandest epic in science fiction.', 1),
  ('Alita: Battle Angel', 1997, 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/ea319276482673.5c6ef1a84349a.jpeg', 'Alita wakes to find that she has been moved into a different cyborg body, as beautiful as ever, but more powerful. She also finds that while she was "gone," Nova revealed the terrible secret of Tiphares. Now, those that know the truth are being hunted down by killer robots, and a group of children needs Alita''s help. But who can she trust?', 2),
  ('To Kill a Mockingbird', 1960, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/1200px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg', 'One of the best-loved stories of all time, To Kill a Mockingbird has been translated into more than 40 languages, sold more than 30 million copies worldwide, served as the basis for an enormously popular motion picture, and voted one of the best novels of the 20th century by librarians across the United States. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father -- a crusading local lawyer -- risks everything to defend a black man unjustly accused of a terrible crime.
  Lawyer Atticus Finch defends Tom Robinson -- a black man charged with the rape of a white girl. Writing through the young eyes of Finch''s children Scout and Jem, Harper Lee explores with rich humor and unswerving honesty the irrationality of adult attitudes toward race and class in small-town Alabama during the mid-1930s Depression years. The conscience of a town steeped in prejudice, violence, and hypocrisy is pricked by the stamina and quiet heroism of one man''s struggle for justice. But the weight of history will only tolerate so much.', 3),
  ('The Lord of the Rings', 1954, 'https://upload.wikimedia.org/wikipedia/en/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif', 'Originally published from 1954 through 1956, J.R.R. Tolkien''s richly complex series ushered in a new age of epic adventure storytelling. A philologist and illustrator who took inspiration from his work, Tolkien invented the modern heroic quest novel from the ground up, creating not just a world, but a domain, not just a lexicon, but a language, that would spawn countless imitators and lead to the inception of the epic fantasy genre. Today, THE LORD OF THE RINGS is considered "the most influential fantasy novel ever written." (THE ENCYCLOPEDIA OF FANTASY)
  During his travels across Middle-earth, the hobbit Bilbo Baggins had found the Ring. But the simple band of gold was far from ordinary; it was in fact the One Ring - the greatest of the ancient Rings of Power. Sauron, the Dark Lord, had infused it with his own evil magic, and when it was lost, he was forced to flee into hiding.
  But now Sauron''s exile has ended and his power is spreading anew, fueled by the knowledge that his treasure has been found. He has gathered all the Great Rings to him, and will stop at nothing to reclaim the One that will complete his dominion. The only way to stop him is to cast the Ruling Ring deep into the Fire-Mountain at the heart of the land of Mordor--Sauron''s dark realm.
  Fate has placed the burden in the hands of Frodo Baggins, Bilbo''s heir...and he is resolved to bear it to its end. Or his own.', 4),
  ('A Game of Thrones', 1996, 'http://www.georgerrmartin.com/wp-content/uploads/2013/03/GOTMTI2.jpg', 'Winter is coming, and in the frozen wastes to the North, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a region of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale rife with plots and counterplots, tragedy and betrayal, victory and terror, as each faction endeavors to win that deadliest of conflicts: the game of thrones.', 4),
  ('The Great Gatsby', 1925, 'https://149352626.v2.pressablecdn.com/wp-content/uploads/2018/02/CK-3-684x1024.jpg', 'Here is a novel, glamorous, ironical, compassionate--a marvelous fusion into unity of the curious incongruities of the life of the period--which reveals a hero like no other--one who could live at no other time and in no other place. But he will live as a character, we surmise, as long as the memory of any reader lasts.
  "There was something gorgeous about him, some heightened sensitivity to the promises of life.... It was an extraordinary gift for hope, a romantic readiness such as I have never found in any other person and which it is not likely I shall ever find again."
  It is the story of this Jay Gatsby who came so mysteriously to West Egg, of his sumptuous entertainments, and of his love for Daisy Buchanan – a story that ranges from pure lyrical beauty to sheer brutal realism, and is infused with a sense of the strangeness of human circumstance in a heedless universe.
  It is a magical, living book, blended of irony, romance, and mysticism.', 5),
  ('1984', 1949, 'https://i0.wp.com/www.printmag.com/wp-content/uploads/2017/01/2a34d8_a6741e88335241308890543d203ad89dmv2.jpg?resize=500%2C815&ssl=1', 'Nineteen Eighty-Four: A Novel, often referred to as 1984, is a dystopian social science fiction novel by the English novelist George Orwell (the pen name of Eric Arthur Blair). It was published on 8 June 1949 by Secker & Warburg as Orwell''s ninth and final book completed in his lifetime. Thematically, Nineteen Eighty-Four centres on the consequences of totalitarianism, mass surveillance, and repressive regimentation of persons and behaviours within society. Orwell, himself a democratic socialist, modelled the authoritarian government in the novel after Stalinist Russia. More broadly, the novel examines the role of truth and facts within politics and the ways in which they are manipulated.', 1),
  ('Shadow of the Torturer', 1980, 'https://m.media-amazon.com/images/I/A19BG5wLHDL.jpg', 'The Shadow of the Torturer is the first volume in the four-volume series, The Book of the New Sun. It is the tale of young Severian, an apprentice in the Guild of Torturers on the world called Urth, exiled for committing the ultimate sin of his profession -- showing mercy toward his victim -- and follows subsequent journey out of his home city of Nessus.', 1),
  ('House of Suns', 2008, 'https://upload.wikimedia.org/wikipedia/en/0/08/House_of_Suns_%28Amazon%29.jpg', 'Six million years ago, at the dawn of the star-faring era, Abigail Gentian fractured herself into a thousand male and female clones, which she called shatterlings. She sent them out into the galaxy to observe and document the rise and fall of countless human empires. Since then, every two hundred thousand years, they gather to exchange news and memories of their travels.Only this millennium there is no gathering. Someone is eliminating the Gentian line. And Campion and Purslane—two shatterlings who have fallen in love and shared forbidden experiences— must determine exactly who, or what, their enemy is, before they are wiped out of existence.', 1),
  ('Hyperion', 1989, 'https://upload.wikimedia.org/wikipedia/en/7/73/Hyperion_cover.jpg', 'In the 29th century, the Hegemony of Man comprises hundreds of planets connected by farcaster portals. The Hegemony maintains an uneasy alliance with the TechnoCore, a civilisation of AIs. Modified humans known as Ousters live in space stations between stars and are engaged in conflict with the Hegemony.
  Numerous "Outback" planets have no farcasters and cannot be accessed without incurring significant time dilation. One of these planets is Hyperion, home to structures known as the Time Tombs, which are moving backwards in time and guarded by a legendary creature known as the Shrike. On the eve of an Ouster invasion of Hyperion, a final pilgrimage to the Time Tombs has been organized. The pilgrims decide that they will each tell their tale of how they were chosen for the pilgrimage.', 1),
  ('Atomic Habits', 2018, 'https://covers.openlibrary.org/b/id/12886417-L.jpg', 'No matter your goals, Atomic Habits offers a proven framework for improving every day. James Clear, one of the world''s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.', 6),
  ('It Ends With Us', 2016, 'https://covers.openlibrary.org/b/id/12916653-L.jpg', 'Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town where she grew up—she graduated from college, moved to Boston, and started her own business. And when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily’s life seems too good to be true. Ryle is assertive, stubborn, maybe even a little arrogant. He’s also sensitive, brilliant, and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn’t hurt. Lily can’t get him out of her head. But Ryle’s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his “no dating” rule, she can’t help but wonder what made him that way in the first place. As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan—her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened. With this bold and deeply personal novel, It Ends With Us is a heart-wrenching story and an unforgettable tale of love that comes at the ultimate price.', 5),
  ('The Subtle Art of Not Giving a Fuck', 2016, 'https://covers.openlibrary.org/b/id/12833521-L.jpg', 'Finding something important and meaningful in your life is the most productive use of your time and energy. This is true because every life has problems associated with it and finding meaning in your life will help you sustain the effort needed to overcome the particular problems you face. Thus, we can say that the key to living a good life is not giving a fuck about more things, but rather, giving a fuck only about the things that align with your personal values.', 6),
  ('The 48 Laws of Power', 1998, 'https://covers.openlibrary.org/b/id/12920669-L.jpg', 'Amoral, cunning, ruthless, and instructive, this piercing work distills three thousand years of the history of power in to forty-eight well explicated laws. As attention--grabbing in its design as it is in its content, this bold volume outlines the laws of power in their unvarnished essence, synthesizing the philosophies of Machiavelli, Sun-tzu, Carl von Clausewitz, and other great thinkers. Some laws teach the need for prudence ("Law 1: Never Outshine the Master"), the virtue of stealth ("Law 3: Conceal Your Intentions"), and many demand the total absence of mercy ("Law 15: Crush Your Enemy Totally"), but like it or not, all have applications in real life. Illustrated through the tactics of Queen Elizabeth I, Henry Kissinger, P. T. Barnum, and other famous figures who have wielded--or been victimized by--power, these laws will fascinate any reader interested in gaining, observing, or defending against ultimate control.', 6),
  ('It Starts With Us', 2022, 'https://covers.openlibrary.org/b/id/12964213-L.jpg', 'Before It Ends with Us, it started with Atlas. Colleen Hoover tells fan favorite Atlas’s side of the story and shares what comes next in this long-anticipated sequel to the “glorious and touching” (USA TODAY) #1 New York Times bestseller It Ends with Us.
  Lily and her ex-husband, Ryle, have just settled into a civil coparenting rhythm when she suddenly bumps into her first love, Atlas, again. After nearly two years separated, she is elated that for once, time is on their side, and she immediately says yes when Atlas asks her on a date.
  But her excitement is quickly hampered by the knowledge that, though they are no longer married, Ryle is still very much a part of her life—and Atlas Corrigan is the one man he will hate being in his ex-wife and daughter’s life.
  Switching between the perspectives of Lily and Atlas, It Starts with Us picks up right where the epilogue for the “gripping, pulse-pounding” (Sarah Pekkanen, author of Perfect Neighbors) bestselling phenomenon It Ends with Us left off. Revealing more about Atlas’s past and following Lily as she embraces a second chance at true love while navigating a jealous ex-husband, it proves that “no one delivers an emotional read like Colleen Hoover” (Anna Todd, New York Times bestselling author).', 5),
  ('Rich Dad, Poor Dad', 1990, 'https://m.media-amazon.com/images/I/81bsw6fnUiL.jpg', 'Rich Dad Poor Dad is Robert''s story of growing up with two dads — his real father and the father of his best friend, his rich dad — and the ways in which both men shaped his thoughts about money and investing.', 6),
  ('How to Win Friends and Influence People', 1913, 'https://covers.openlibrary.org/b/id/12996599-L.jpg', 'How To Win Friends And Influence People teaches readers how to connect with people, be more likable, win deals and improve relationships. And the animated summary: Dale Carnegie''s quintessential principles from his groundbreaking book How to Win Friends and Influence People have stood the test of time.', 6),
  ('Verity', 2018, 'https://covers.openlibrary.org/b/id/12924621-L.jpg', 'Lowen Ashleigh is a struggling writer on the brink of financial ruin when she accepts the job offer of a lifetime. Jeremy Crawford, husband of bestselling author Verity Crawford, has hired Lowen to complete the remaining books in a successful series his injured wife is unable to finish.', 5),
  ('Duma Key', 2008, 'https://covers.openlibrary.org/b/id/10582232-L.jpg', 'Edgar Freemantle reached a T-junction in his life''s journey when a freak accident cost him his arm... and his marriage. He takes the turning marked Florida — home, as they say, of the newly wed, or nearly dead.
  But rather than choosing a typical holiday location, Freemantle is drawn to a beautiful, eerily remote stretch of land off Florida''s West Coast: Duma Key, a tangle of banyans, palms and pines next to a deserted beach — uninhabited bar a few houses owned by an old lady named Elizabeth, once a famous patron of the arts.
  Encouraged by his youngest daughter, Freemantle discovers a unique talent for painting, starting with the fabulous sunsets. But soon he finds himself experiencing weird phantom pains in his missing arm. And something strange and disturbing is happening with his pictures: they are becoming predictive, even dangerous to those who buy them.
  Freemantle must team up with his fellow resident, Wireman, to chart his way through the increasingly disturbing mystery of
  Duma Key, where out-of-season hurricanes tear lives apart and a powerful undertow lures lost and tormented souls. Eventually, they will have to discover what really happened to Elizabeth''s twin sisters, who disappeared in the 1920s — and the haunting secret to which this strange old lady holds the key. Duma Key is a mesmerizing and compelling story about friendship, and the bond between a father and his daughter. It is also about the power of memory and truth, art and nature.', 5),
  ('The God Delusion', 2001, 'https://covers.openlibrary.org/b/id/8231555-L.jpg', 'With rigor and wit, Dawkins examines God in all his forms, from the sex-obsessed tyrant of the Old Testament to the more benign (but still illogical) Celestial Watchmaker favored by some Enlightenment thinkers. He eviscerates the major arguments for religion and demonstrates the supreme improbability of a supreme being. He shows how religion fuels war, foments bigotry, and abuses children, buttressing his points with historical and contemporary evidence. The God Delusion makes a compelling case that belief in God is not just wrong but potentially deadly. It also offers exhilarating insight into the advantages of atheism to the individual and society, not the least of which is a clearer, truer appreciation of the universe''s wonders than any faith could ever muster.', 6),
  ('The Claw of the Conciliator', 1981, 'https://img.bookfrom.net/img/1707050829/1074_the_claw_of_the_conciliator.jpg', 'The book continues the story of Severian, a journeyman in the Seekers for Truth and Penitence (the guild of torturers), describing his travels north to the city of Thrax.', 1),
  ('The Sword of the Lictor', 1981, 'https://covers.openlibrary.org/b/id/6594789-L.jpg', 'The book continues the story of Severian, a lictor in the Seekers for Truth and Penitence, describing his time as a torturer in the city Thrax and then his travels after soon leaving Thrax.', 1),
  ('The Citadel of the Autarch', 1982, 'https://upload.wikimedia.org/wikipedia/en/6/62/TheCitadelOfTheAutarch.jpg', 'Unlike the first books in the series, The Citadel of the Autarch picks up right after the end of the previous one, The Sword of the Lictor. It tells of the travels of Severian, weak and defenseless after his encounter with Baldanders and Dr. Talos. Severian continues his travels, which lead him into war.', 1),
  ('Gardens of the Moon', 1999, 'https://covers.openlibrary.org/b/id/6304201-L.jpg', 'The opening chapter in an epic fantasy masterpiece....Bled dry by interminable warfare, infighting and bloody confrontations with Lord Anomander Rake and his Tiste Andii, the vast, sprawling Malazan empire simmers with discontent.Even its imperial legions yearn for some respite. For Sergeant Whiskeyjack and his Bridgeburners and for Tattersail, sole surviving sorceress of the Second Legion, the aftermath of the siege of Pale should have been a time to mourn the dead. But Darujhistan, last of the Free Cities of Genabackis, still holds out - and Empress Lasseen''s ambition knows no bounds. However, it seems the empire is not alone in this great game. Sinister forces gather as the gods themselves prepare to play their hand... Conceived and written on an epic scale, Gardens of the Moon is a breathtaking achievement - a novel in which grand design, a dark and complex mythology, wild and wayward magic and a host of enduring characters combine with thrilling, powerful storytelling to resounding effect. Acclaimed by writers, critics and readers alike, here is the opening chapter in what has been hailed a landmark of epic fantasy: the awesome ''The Malazan Book of the Fallen''.', 4),
  ('Deadhouse Gates', 2000, 'https://covers.openlibrary.org/b/id/6424046-L.jpg', 'The second book in Steven Erikson''s thrilling epic fantasy series chronicling the ill-fated Malazan Empire. Weakened by events in Darujhistan, the Malazan Empire teeters on the brink of anarchy. In the vast dominion of Seven Cities, in the Holy Desert Raraku, the seer Sha''ik gathers an army around her in preparation for the long-prophesied uprising named the Whirlwind. Unprecedented in its size and savagery, it will embroil in one of the bloodiest conflicts it has ever known: a maelstrom of fanaticism and bloodlust that will shape destinies and give birth to legends... In the Otataral mines, Felisin, youngest daughter of the disgraced House of Paran, dreams of revenge against the sister who sentenced her to a life of slavery. Escape leads her to raraku, where her soul will be reborn and her future made clear. The now-outlawed Bridgeburners, Fiddler and the assassin Kalam, have vowed to return the once god-possessed Apsalar to her homeland, and to confront and kill the Empress Laseen, but events will overtake them too. Meanwhile, Coltaine, the charismatic commander of the Malaz 7th Army, will lead his battered, war-weary troops in a last, valient running battle to save the lives of thirty thousand refugees and, in so doing, secure an illustrious place in the Empire''s chequered history. And into this blighted land come two ancient wanderers, Mappo and his half-Jaghut companion Icarium, bearers of a devastating secret that threatens to break free of its chains... Set in a brilliantly-realized world ravaged by anarchy and dark, uncontrollable magic, Deadhouse Gates is the thrilling, brutal second chapter in the Malazan Book of the Fallen. A powerful novel of war, intrigue and betrayal, it confirms Steven Erikson as a storyteller of breathtaking skill, imagination and originality - a new master of epic fantasy.', 4);

INSERT INTO publishers (name, location, author_id, book_id)
VALUES
  ('Chilton Books', 'Boston, Massachusetts', 1, 1),
  ('Shueisha', 'Tokyo, Japan', 2, 2),
  ('J. B. Lippincott & Co.', 'Philadelphia, Pennsylvania', 3, 3),
  ('Allen & Unwin', 'Sydney, Australia', 4, 4),
  ('Bantam Spectra', 'New York City, New York', 5, 5),
  ('Charles Scribner''s Sons', 'New York City, New York', 6, 6),
  ('Secker & Warburg', 'London, England', 7, 7),
  -- TODO: add 'publishing_house' with name so we can link to id instead of 
  -- repeating values. Could do the same with 'publishing_location'.
  ('Simon & Schuster', 'Manhattan, New York City', 8, 8),
  ('Simon & Schuster', 'Manhattan, New York City', 12, 12),
  ('Simon & Schuster', 'Manhattan, New York City', 12, 15),
  ('Simon & Schuster', 'Manhattan, New York City', 16, 17),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 21),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 22),
  ('Simon & Schuster', 'Manhattan, New York City', 8, 23),
  ('Gollancz', 'London, England', 9, 9),
  ('Doubleday', 'New York City, New York', 10, 10),
  ('Penguin', 'New York City, New York', 11, 11),
  ('Harper Collins', 'New York City, New York', 13, 13),
  ('Viking', 'New York City, New York', 14, 14),
  ('Warner Books', 'New York City, New York', 15, 16),
  ('Grand Central Publishing', 'New York City, New York', 12, 18),
  ('Hodder & Stoughton', 'London, England', 17, 19),
  ('Houghton Mifflin Harcourt', 'Boston, Massachusetts', 18, 20),
  ('Tor', 'New York City: New York', 19, 24),
  ('Tor', 'New York City: New York', 19, 25);


INSERT INTO users (first_name, last_name, username, email, profile_pic_url)
VALUES
  ('Abigail', 'Abraham', 'abby123', 'abi.abr@gmail.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
  ('Benjamin', 'Burgess', 'benjy', 'benj.burg@hotmail.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
  ('Chloe', 'Cornish', 'cornycorn', 'corny.corn@icloud.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
  ('David', 'Dawood', 'dawood_david', 'dd@gmail.com', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png');

INSERT INTO shelves (user_id, book_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  (1, 6),
  (1, 7),
  (1, 8),
  (1, 9),
  (1, 10),
  (1, 11),
  (1, 12),
  (1, 13),
  (1, 14),
  (1, 15),
  (1, 16),
  (1, 17),
  (1, 18),
  (1, 19),
  (1, 20),
  (1, 21),
  (1, 22),
  (1, 23),
  (1, 24),
  (1, 25),
  (2, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (2, 9),
  (2, 10),
  (2, 11),
  (2, 12),
  (2, 13),
  (2, 14),
  (2, 15),
  (2, 16),
  (2, 17),
  (3, 1),
  (4, 1),
  (4, 2),
  (4, 3),
  (4, 4),
  (4, 5),
  (4, 6),
  (4, 7),
  (4, 8),
  (4, 9),
  (4, 10),
  (4, 11),
  (4, 12),
  (4, 13);

INSERT INTO lists (title, description, user_id)
VALUES
  ('Abby''s favourite books of 2022', 'These are some books that I really liked reading in 2022', 1),
  ('Benjamin''s favourite books of 1998', 'These are some books that I remember really enjoying in 1998', 2),
  ('Abby''s revised favourite books list of 2022', 'Here are a new bunch of books that I actually like better than the last list I made!', 1),
  ('David''s summer reading catalogue', 'READ THESE', 4),
  ('Chloe''s books to check out', 'I''ve been recommending these books to ALL of my friends this year, so I hope you''ll like them too!', 3);

INSERT INTO on_list (list_id, book_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (2, 9),
  (2, 10),
  (2, 11),
  (3, 9),
  (3, 10),
  (3, 11),
  (3, 12),
  (3, 13),
  (3, 14),
  (3, 15),
  (4, 2),
  (4, 13),
  (4, 22),
  (5, 23),
  (5, 1),
  (5, 2),
  (5, 16),
  (5, 17),
  (5, 20),
  (5, 18),
  (5, 14);

INSERT INTO reviews (stars, recommended, description, user_id, book_id)
VALUES
  (5, true, 'This is one of my favourite books, read it.', 2, 2),
  (5, true, 'This is the worst book on earth, don''t read it (just kidding)', 2, 9),
  (2, true, 'I don''t think it''s the best book, but it was entertaining to read.', 4, 1),
  (4, false, 'I recognize that it''s a classic, but it takes way too long to get to the good parts.', 3, 8),
  (3, false, 'It was okay, but definitely worth the amount of pages', 1, 23);