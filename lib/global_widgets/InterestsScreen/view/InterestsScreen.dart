import 'package:flutter/material.dart';

class InterestsScreen extends StatefulWidget {
  InterestsScreen({Key? key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  late int n;
  var categories = [
    'Food',
    'India',
    'Sports',
    'Technology',
    'Business & Finance',
    'Science & Learning',
    'Travel & Outdoors',
    'Animals & Awwws',
    'Hobbies'
  ];
  var subCategories = {
    'Food': [
      'Indian Food',
      'Vegetarian Food',
      'Vegan Food',
      'Healthy Food',
      'Easy cooking',
      'Food hacks',
    ],
    'India': [
      'Maharashtra',
      'Hyderabad',
      'Delhi',
      'Kerala',
      'Karnataka',
      'Assam',
      'Tripura',
      'Ayodhya',
      'Ahammedabad',
      'Haryana',
      'Chennai',
      'Bihar',
      'West Bengal',
      'Rajasthan',
      'Lucknow',
    ],
    'Sports': [
      'M S Dhoni',
      'Mumbai Indians',
      'Cricket',
      'Hockey',
      'Indian Cricket',
      'Badminton',
      'Indian Worldcup',
      'Football',
      'Indian Premier League',
      'Sports',
      'Virat Kohli',
      'Sachin Tendulkar',
    ],
    'Technology': [
      'Gadgets',
      'Futurology',
      'Programming',
      'Virtual Reality',
      'Artificial Intelligence',
      'Web Development',
      'Tech News'
    ],
    'Business & Finance': [
      'Investing',
      'Business',
      'Finance tips',
      'Crypto',
      'Entrepreneurship',
      'Startups',
      'NFT',
      'Savings',
      'Debit'
    ],
    'Science & Learning': [
      'Biology',
      'Chemistry',
      'Psychology',
      'Sociology',
      'Anthropology',
      'Economics',
      'Political Science',
      'Mathematics',
      'Computer Science',
      'Logic',
      'Behaviorism',
      'Constructivism',
      'Cognitive Learning Theories',
      'Experiential Learning',
      'Inquiry-Based Learning'
    ],
    'Travel & Outdoors': [
      'Mountaineering',
      'Trekking',
      'Rock Climbing',
      'Rafting',
      'Skiing/Snowboarding',
      'Hiking',
      'Camping'
          'Birdwatching',
      'Wildlife Photography',
      'Botanical Exploration',
    ],
    'Animals & Awwws': [
      'Dogs',
      'Cats',
      'Rabbits',
      'Hamsters',
      'Birds',
      'Fish',
      'Reptiles',
      'Rodents',
      'Puppies',
      'Kittens',
      'Ducklings',
      'Chicks',
      'Fawns',
      'Cubs',
      'Playful animals',
      'Animal friendships',
      'Heartwarming interactions',
      'Animals showing affection',
    ],
    'Hobbies': [
      'Hiking',
      'Camping',
      'Fishing',
      'Gardening',
      'Birdwatching',
      'Photography',
      'Drawing',
      'Painting',
      'Sculpting',
      'Pottery',
      'Crafting ',
      'knitting',
      'crocheting',
      'sewing',
      'woodworking',
      'DIY projects',
      'Playing a musical instrument',
      'Singing',
      'Acting',
      'Dancing',
      'Running',
      'Cycling',
      'Yoga',
      'Swimming',
      'Tennis',
      'Martial arts'
    ],
  };

  @override
  void initState() {
    super.initState();
    n = categories.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              for (int i = 0; i < n; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        categories[i],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      if (subCategories[categories[i]] != null)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (String subCategory
                                in subCategories[categories[i]]!)
                              Text(
                                subCategory,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
