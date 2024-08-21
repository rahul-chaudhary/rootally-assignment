class WorkoutRoutine {
  final String title;
  final String workoutType;
  final String workoutGoal;
  final String difficulty;
  final String imgAssetPath;

  WorkoutRoutine({
    required this.title,
    required this.workoutType,
    required this.workoutGoal,
    required this.difficulty,
    required this.imgAssetPath,
  });
}

// List of workout routines
List<WorkoutRoutine> workoutRoutinesList = [
  WorkoutRoutine(
    title: "Sweat Starter",
    workoutType: "Full body",
    workoutGoal: "Lose Weight",
    difficulty: "Medium",
    imgAssetPath: 'lib/assets/images/squatting_gym_girl.png'
  ),
  WorkoutRoutine(
    title: "Cardio Blast",
    workoutType: "Cardio",
    workoutGoal: "Improve Endurance",
    difficulty: "High",
    imgAssetPath: 'lib/assets/images/stretching_man.png'
  ),
];