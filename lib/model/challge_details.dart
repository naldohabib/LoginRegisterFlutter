import 'package:flutterapitut/model/challge_model.dart';

class MovieDetails extends Movie {
  final String url;
  final int id;
  final String user;
  final String challengeMaker;
  final String title;
  final String titleSlug;
  final String description;
  final String reward;
  final String image;
  final String difficultyLevel;
  final String types;
  final String startedAt;
  final String finishedAt;
  final bool isFeatured;
  final bool isCompleted;
  final double taskCount;
  final String participantCount;
  final String challengeRuleHeadline;
  final String challengeRuleDescription;

  MovieDetails(Movie movie, 
      {this.url,
      this.id,
      this.user,
      this.challengeMaker,
      this.title,
      this.titleSlug,
      this.description,
      this.reward,
      this.image,
      this.difficultyLevel,
      this.types,
      this.startedAt,
      this.finishedAt,
      this.isFeatured,
      this.isCompleted,
      this.taskCount,
      this.participantCount,
      this.challengeRuleHeadline,
      this.challengeRuleDescription,
      name});

  // factory MovieDetails.fromJson(Map<String, dynamic> item) {
  //   return MovieDetails(
  //     url: item['url'],
  //     id: item['id'],
  //     user: item['user'],
  //     challengeMaker: item['challengeMaker'],
  //     title: item['item'],
  //     titleSlug: item['titleSlug'],
  //     description: item['description'],
  //     reward: item['reward'],
  //     image: item['image'],
  //     difficultyLevel: item['difficultyLevel'],
  //     types: item['types'],
  //     startedAt: item['startedAt'],
  //     finishedAt: item['finishedAt'],
  //     isFeatured: item['isFeatured'],
  //     isCompleted: item['isCompleted'],
  //     taskCount: item['taskCount'],
  //     participantCount: item['participantCount'],
  //     challengeRuleHeadline: item['challengeRuleHeadline'],
  //     challengeRuleDescription: item['challengeRuleDescription'],
  //   );
  // }

  @override
  List<Object> get props =>
      super.props +
      [
        url,
        id,
        user,
        challengeMaker,
        title,
        titleSlug,
        description,
        reward,
        image,
        difficultyLevel,
        types,
        startedAt,
        finishedAt,
        isFeatured,
        isCompleted,
        taskCount,
        participantCount,
        challengeRuleHeadline,
        challengeRuleDescription
      ];
}
