class WorkoutRoutine {
  final String title;
  final String workoutType;
  final String workoutGoal;
  final String difficulty;

  WorkoutRoutine({
    required this.title,
    required this.workoutType,
    required this.workoutGoal,
    required this.difficulty,
  });
}

// List of 10 workout routines
List<WorkoutRoutine> workoutRoutinesList = [
  WorkoutRoutine(
    title: "Sweat Starter",
    workoutType: "Full body",
    workoutGoal: "Lose Weight",
    difficulty: "Medium",
  ),
  WorkoutRoutine(
    title: "Cardio Blast",
    workoutType: "Cardio",
    workoutGoal: "Improve Endurance",
    difficulty: "High",
  ),
  WorkoutRoutine(
    title: "Core Strength",
    workoutType: "Core",
    workoutGoal: "Build Strength",
    difficulty: "Medium",
  ),
  WorkoutRoutine(
    title: "Leg Day",
    workoutType: "Lower body",
    workoutGoal: "Build Muscle",
    difficulty: "Hard",
  ),
  WorkoutRoutine(
    title: "HIIT Burner",
    workoutType: "High Intensity Interval Training",
    workoutGoal: "Burn Fat",
    difficulty: "High",
  ),
  WorkoutRoutine(
    title: "Yoga Flow",
    workoutType: "Flexibility",
    workoutGoal: "Increase Flexibility",
    difficulty: "Easy",
  ),
  WorkoutRoutine(
    title: "Upper Body Pump",
    workoutType: "Upper body",
    workoutGoal: "Build Strength",
    difficulty: "Medium",
  ),
  WorkoutRoutine(
    title: "Endurance Builder",
    workoutType: "Cardio",
    workoutGoal: "Increase Stamina",
    difficulty: "Medium",
  ),
  WorkoutRoutine(
    title: "Full Body Stretch",
    workoutType: "Stretching",
    workoutGoal: "Improve Mobility",
    difficulty: "Easy",
  ),
  WorkoutRoutine(
    title: "Strength Circuit",
    workoutType: "Full body",
    workoutGoal: "Build Strength",
    difficulty: "Hard",
  ),
];