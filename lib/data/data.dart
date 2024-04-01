import '../models/models.dart';

List<Category> categories = [
  Category(
    id: 'c1',
    title: 'Beaches',
    imageUrl:
        'https://c1.wallpaperflare.com/preview/171/977/172/dahab-blue-hole-beach-egypt-sky-sea.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Archaeology',
    imageUrl:
        'https://images.pexels.com/photos/3721472/pexels-photo-3721472.jpeg?auto=compress&cs=tinysrgb&w=1260&h=300=1',
  ),
  Category(
      id: 'c3',
      title: 'Medical',
      imageUrl:
          'https://www.globaltimes.cn/Portals/0/attachment/2022/2022-03-27/3ddbfae8-2bb8-40e8-ad76-5de44c6cfb72.jpeg'),
  Category(
    id: 'c4',
    title: 'ِِAdventures',
    imageUrl:
        'https://blog.fts-travels.com/wp-content/uploads/2022/04/hot-air-balloon-luxor.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Religious',
    imageUrl:
        'https://www.egypttoursportal.com/images/2020/12/Religious-Tourism-Types-of-Tourism-in-Egypt-Egypt-Tours-Portal.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Culture',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/The_Egyptian_Museum.jpg/1280px-The_Egyptian_Museum.jpg',
  )
];

List<CategoryModel> catList = [
  CategoryModel('Full Packages', 'assets/images/categories/full_packages.jpg'),
  CategoryModel('Nile Cruises', 'assets/images/categories/nile_cruise.jpg'),
  CategoryModel('Excursions', 'assets/images/categories/excursions.jpg'),
  CategoryModel('Day tours', 'assets/images/categories/day_tour.jpg'),
  CategoryModel('Discover', 'assets/images/categories/discover.jpg'),
];
List<Attraction> attractions = [
  Attraction(
    name: 'Karnak Temple',
    location: 'Luxor',
    imageUrl: 'https://i.ibb.co/pKrnn5J/karnak.jpg',
    description: 'The largest temple in the egypt.',
  ),
  Attraction(
    name: 'Abu Simbel Temple',
    location: 'Aswan',
    imageUrl: 'https://i.ibb.co/G9zNWYS/146.jpg',
    description: 'The temple of King Ramses II.',
  ),
  Attraction(
    name: 'Khan El khalil',
    location: 'Cairo',
    imageUrl: 'https://i.imgur.com/mgCSZJs_d.webp?maxwidth=500&fidelity=grand',
    description: "The Egyptian ancient bazaar.",
  ),
  Attraction(
    name: 'Sharm El Sheikh',
    location: 'Red Sea',
    imageUrl: 'https://i.ibb.co/p1BR7mD/sharm-el-sheikh.jpg',
    description: "The city of peace.",
  ),
  Attraction(
    name: 'Kom Ombo Temple',
    location: 'Aswan',
    imageUrl:
        'https://www.tripsavvy.com/thmb/_MXn0mFzbKVa4uNYrtSPya4p0_4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-157675568-5c3ee84246e0fb00016e5151.jpg',
    description: "The unusual double temple.",
  ),
  Attraction(
    name: 'Dahab City',
    location: 'Red Sea',
    imageUrl:
        'https://www.propertyfinder.eg/blog/wp-content/uploads/2020/10/shutterstock_1396879814-1.jpg.webp',
    description: "The Red Sea's golden city.",
  ),
  Attraction(
    name: 'Edfu Temple',
    location: 'Aswan',
    imageUrl:
        'https://www.planetware.com/photos-large/EGY/egypt-edfu-temple-of-horus-mammisi.jpg',
    description: "The temple of King Horus.",
  ),
];

List<Trip> tripList = [
  Trip(
      excluded: [
        'Any extras and personal spending',
        'Drinks during meals',
        'Tipping kitty',
      ],
      included: [
        'Meet and assist service upon arrival & departure',
        'Assistance of our personnel during your stay and excursions',
        'All transfers by a modern air-conditioned deluxe vehicle',
        'Accommodation for 3 nights on board 5 star Nile cruise on full board basis',
        'All Nile Cruise excursions as mentioned in the itinerary sharing Memphis group',
        'Entrance fees to all sights between Luxor and Aswan',
        'Local English speaking Egyptologist guide during your excursions',
        'Meals as mentioned in the above itinerary',
        'All service charges and taxes',
      ],
      title: 'Salacia New Year Nile Cruise 2022',
      price: 900,
      duration: '7 nights',
      status: 'Group Tour',
      tripImages: [
        'https://media.tacdn.com/media/attractions-splice-spp-674x446/09/97/5e/d9.jpg',
        'https://www.al-monitor.com/sites/default/files/styles/article_header/public/2022-03/GettyImages-157675568_0.jpeg?h=a5ae579a&itok=t3S0QZ7P',
        'https://lp-cms-production.imgix.net/2019-06/180f94a63685653b30679b0d7256867b-temple-of-horus.jpg?auto=format&q=40&ar=16%3A9&fit=crop&crop=center&fm=auto&w=1946',
        'https://scontent.fcai20-3.fna.fbcdn.net/v/t1.6435-9/123585436_204145591108133_3314156857728385555_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_ohc=apnt5VM3wogAX9Bf1o3&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_08YklN91uSSEo5nE3tnmauP_9kNDO1fA5SBchzYFPVA&oe=63579F6B',
      ],
      featureImgUrl:
          'https://images.memphistours.com/large/1547588517_Cover%20%20(3).jpg',
      cities: 4,
      description:
          'Are you looking for Egypt New Year Holiday? Experience a memorable New Year vacation in Egypt on this 4 day Aswan Luxor Nile Cruise tour aboard Salacia Nile Cruise. Best Nile cruise in its category, the Salacia cruise features great cabins and suites, stateroom and royal suites. Discover all historical sites along the Nile and visit the famous attractions like the Valley of the Kings in Luxor, Philae Temple in Aswan and more. ',
      itinerary: [
        'Day 1: Aswan Nile Cruise Excursions',
        'Day 2: Kom Ombo Temple',
        'Day 3: Edfu Temple Nile Cruise Excursions',
        'Day 4: Luxor Nile Cruise Tours'
      ],
      tripType: 'package'),
  Trip(
    included: [
      'Meet and greet service by our representatives upon your airport arrival',
      'Assistance with guest relations during your stay',
      'All transfers via private air-conditioned vehicle',
      'Domestic flight tickets from Cairo to Luxor and Aswan to Cairo',
      'Accommodation for 3 nights in Cairo, including daily breakfast',
      'Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board',
      'Sightseeing tours on the cruise shared with a Memphis Tours group',
      'Local English speaking tour guide',
      'Entrance fees to all sites mentioned on the itinerary',
      'All meals mentioned on the itinerary',
      'Bottled water during outings outside of hotel or cruise ship',
      'Portage as needed',
      'All service charges and taxes',
    ],
    excluded: [
      'International Airfare',
      'Entry visa to Egypt',
      'Any optional tours',
      'Personal spending',
      'Tipping',
    ],
    status: 'Private Tour',
    title: 'Trip to Egypt: Pyramids & Nile by Air',
    price: 1357,
    duration: '8 days',
    featureImgUrl:
        'https://www.egypttoursportal.com/images/2018/09/Queen-Hatshepsut-Temple-Egypt-Tours-Portal-1.jpg',
    tripImages: [
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/09/34/42/0c.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/b2/fa/e5.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/75/9e/8c.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/9c/bd/1c.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/2e/2e/d7.jpg'
    ],
    tripType: 'package',
    cities: 6,
    description:
        'Combine the rich heritage of Cairo with a magical 5-day Nile cruise on this Egypt vacation package—a must for any lover of history. Experience the best Egypt tour, visiting all of Egypt’s top highlights attractions scattered across the desert and range from famous pyramids to forgotten temples only in 8 days. You’ll begin your tour in Cairo. This is where you will visit the Great Pyramids of Giza and the Egyptian Museum. Then, fly to Luxor to embark on your cruise on the Nile where you will explore captivating attractions and natural scenery between Luxor and Aswan. With this tour, enjoy a luxurious five-star cruise, your choice of traditional hotel or boutique hotel, mesmeric history, and a seductive charm that will have you leaving Egypt in astonishment. ',
    itinerary: [
      'Day 1: Arrival in Cairo',
      'Day 2: Pyramids and Cairo Sightseeing',
      'Day 3: Fly to Luxor - East Bank Sightseeing',
      'Day 4: West Bank Sightseeing',
      'Day 5: Edfu and Kom Ombo',
      'Day 6: Aswan Sightseeing',
      'Day 7: Fly to Cairo - Optional Tour to Abu Simbel',
      'Day 8: Cairo - Fly Back Home'
    ],
  ),
  Trip(
    title: 'The Best of Egypt: Cairo, Nile Cruise & Sharm El Sheikh',
    price: 1890,
    duration: '12 days',
    status: 'Private Tour',
    featureImgUrl:
        'https://d3rr2gvhjw0wwy.cloudfront.net/uploads/activity_galleries/272563/2000x2000-0-70-6bc8b9fb3d169496977eb5cb144e4e33.jpg',
    cities: 7,
    description:
        'Enjoy the perfect combination of Egyptian culture and relaxation. This trip is ideal for those who want to have a taste of Egypt’s wonderful sites, as well as a good time to relax in Sharm El Sheikh. Experience the best of Egypt and indulge yourself in a vacation to Egypt visiting Pyramids of Giza, Sakkara and the Egyptian Museum. Fly to Luxor afterwards to explore top sights cruising the Nile from Luxor to Aswan. Then, loose yourself and relax on the beach of the Red Sea in Sharm El Sheikh. Plenty of activities and tours into the desert and mountains of Sinai await you. ',
    itinerary: [
      'Day 1: Welcome to Land of Pharaohs',
      'Day 2: Pyramids Tour',
      'Day 3: Cairo Sightseeing',
      'Day 4: Fly to Luxor - East Bank Sightseeing',
      'Day 5: Luxor West Bank Sightseeing',
      'Day 6: Edfu and Kom Ombo',
      'Day 7: Aswan Sightseeing',
      'Day 8: Fly to Sharm El Sheikh',
      'Day 9: Sharm El Shiekh Optional Excursions',
      'Day 10: Sharm El Shiekh Optional Excursions',
      'Day 11: Back to Cairo',
      'Day 12: Cairo - Fly Back Home',
    ],
    tripType: 'package',
    tripImages: [
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/bc/b7/3e.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/20/86/54.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/9a/06/6e.jpg',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/08/cb/dc/f1.jpg',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/30/b2/7d/ras-mohammed-park.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/47/72/23/enjoy-the-aqua-blue.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/18/11/19/dolphina-park.jpg?w=1200&h=-1&s=1'
    ],
    included: [
      'Meet and greet service by our representatives at airports',
      'Assistance of our guest relations during your stay',
      'All transfers by a private air-conditioned vehicle',
      'Domestic flight (Cairo/ Luxor – Aswan /Sharm - Cairo)',
      'Accommodation for 4 nights in Cairo including bed and breakfast',
      'Accommodation for 4 nights on a 5 star superior cruise on full board',
      'Accommodation for 3 nights in Sharm El Sheikh including bed & breakfast',
      'All sightseeing tours in Cairo (Private Guided Tours)',
      'All sightseeing tours on the cruise sharing Memphis Tours group',
      'Entrance fees to all sites as indicated on the itinerary',
      'Bottled water during outings outside of hotel or cruise ship',
      'Meals at hotels, Nile Cruise and during tours as mentioned in the itinerary',
      'Portage when needed',
      'All service charges and taxes',
    ],
    excluded: [
      'International Airfare',
      'Entry visa to Egypt',
      'Any optional tours',
      'Personal spending',
      'Tipping',
    ],
  ),
  Trip(
    status: 'Private tour',
    title: 'Cairo and Nile Adventure',
    price: 3229,
    duration: '11 day',
    featureImgUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0b/0d/81/6e.jpg',
    tripImages: [
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/9c/bb/38.jpg',
      'https://images.memphistours.com/large/683926807_964959328.jpg',
      'https://images.memphistours.com/large/1115356636_Cairo%20and%20Nile%20Adventure.jpg',
      'https://venividitravel.com/wp-content/uploads/2019/01/Nile-Cruise-6.jpg',
      'https://www.tripsavvy.com/thmb/BGQx-cQiIKQl--0zOd7aNVoS8Oo=/900x0/filters:no_upscale():max_bytes(150000):strip_icc():gifv():format(webp)/GettyImages-500053303-5c80e80b46e0fb0001a5f168.jpg'
    ],
    tripType: 'PACKAGE',
    cities: 6,
    description:
        'Unravel the marvelous beauty of Egypt through our carefully curated 11-day Cairo and Nile adventure. Revel in the splendor and grandeur of ancient Egyptian civilization in the Pharaonic Capital, Cairo, before embarking on a splendid Nile cruise down the magical waters of the Nile from Luxor to Aswan on the traditional yet luxurious Nebyt Dahabiya. Wind down the tranquil waters of the Nile on a unique route taking you through El Batekh, El Kab Village, Esna, Edfu, Gebel El Silsila, and much more. Enjoy a luxurious sailing experience on this intimate Dahabiya with a small number of cabins, mini bar, jacuzzi, and a shaded sun deck with a hot tub and chaise lounges, where you can back in the warm breeze of the Nile while feasting your eyes on the picturesque views of Upper Egypt’s charming river-side cities. ',
    itinerary: [
      'Day 1: Arrival in Cairo - Welcome to land of Pharaohs',
      'Day 2: Visiting the Pyramids & Sakkara',
      'Day 3: Cairo Sightseeing',
      'Day 4: Embark in Luxor',
      'Day 5: Esna, El Kab Village, and Edfu',
      'Day 6: Gabal El Silsela',
      'Day 7: Sailing to Aswan',
      'Day 8: Aswan & Philae Temple',
      'Day 9: Kom Ombo',
      'Day 10: Sailing to Esna',
      'Day 11: Disembarkation & Final Departure'
    ],
    included: [
      'Meet and greet service by our representatives at airports',
      'Assistance of our guest relations during your stay',
      'Entry Visa for Egypt provided upon arrival Cairo Airport',
      'All airport transfer by a private air-conditioned deluxe vehicle with Free WIFI',
      'Accommodation for 3 nights in Cairo including daily breakfast.',
      'Accommodation for 7 nights onboard Dahabiya on full board basis',
      'Domestic flight Cairo/luxor/Cairo',
      'All sightseeing tours in Cairo - privately guided tours',
      'All sightseeing tours on the cruise sharing Dahabiya group',
      'All sightseeing tours in Cairo, Luxor, and Aswan as mentioned in the itinerary',
      'Entrance fees to all sites as indicated on the itinerary.',
      'Tea, Coffee and Soft Drinks during Meals on board your Dahabiya',
      'Local English-speaking tour guide during your tours',
      'Lunch at a good quality local restaurant',
      'Bottled water during your tours and transfers',
      'Free wifi service during your stay in Egypt',
      'All service charges and applicable taxes included',
      'Complimentary Cairo Photo Session around Giza Pyramids',
    ],
    excluded: [
      'International Airfare',
      'Any optional tours',
      'Personal spending',
      'Tipping Kitty',
    ],
  )
];
