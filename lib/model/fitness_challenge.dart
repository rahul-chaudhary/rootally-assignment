
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
    imgAssetPath: 'lib/assets/images/gym_girl.png',
  ),
  FitnessChallenge(
    title: "Cardio Training",
    description: "Boost your cardiovascular endurance with personalized cardio workouts",
    imgAssetPath: 'lib/assets/images/gym_boy.png',
  ),
  // FitnessChallenge(
  //   title: "Strength Training",
  //   description: "Build muscle and increase strength with guided strength exercises",
  // ),
  // FitnessChallenge(
  //   title: "Flexibility Training",
  //   description: "Improve your flexibility with tailored stretching and yoga routines",
  // ),
  // FitnessChallenge(
  //   title: "Body Composition Analysis",
  //   description: "Track your body fat percentage and muscle mass with our in-depth analysis",
  // ),
  // FitnessChallenge(
  //   title: "Nutrition Plan",
  //   description: "Receive a personalized nutrition plan to complement your fitness regime",
  // ),
  // FitnessChallenge(
  //   title: "Posture Correction",
  //   description: "Improve your posture and reduce muscle strain with expert guidance",
  // ),
  // FitnessChallenge(
  //   title: "HIIT Workouts",
  //   description: "High-intensity interval training for maximum calorie burn in minimal time",
  // ),
  // FitnessChallenge(
  //   title: "Recovery Sessions",
  //   description: "Enhance recovery with foam rolling, stretching, and active rest exercises",
  // ),
  // FitnessChallenge(
  //   title: "Mental Well-being",
  //   description: "Improve mental health with mindfulness practices, meditation, and relaxation techniques",
  // ),
];