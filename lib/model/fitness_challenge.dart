
class FitnessChallenge {
  final String title;
  final String description;
  final String imgAssetPath;

  FitnessChallenge({required this.title, required this.description, required this.imgAssetPath});
}

// List of 10 entries
List<FitnessChallenge> fitnessChallengesList = [
  FitnessChallenge(
    title: "Fitness Assessment",
    description: "Get started on your fitness goals with our physical assessment and vital scan",
    imgAssetPath: 'lib/assets/images/gym_girl2.png',
  ),
  FitnessChallenge(
    title: "Cardio Training",
    description: "Boost your cardiovascular endurance with personalized cardio workouts",
    imgAssetPath: 'lib/assets/images/gym_boy.png',
  ),
];