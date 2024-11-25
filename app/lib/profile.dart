class RestaurantProfile {
  String name;
  String address;
  String phoneNumber;
  String cuisine;
  List<String> openingHours;

  
  RestaurantProfile({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.cuisine,
    required this.openingHours,
  });

  // Method to display the restaurant profile
  void displayProfile() {
    print("Restaurant Name: $name");
    print("Address: $address");
    print("Phone Number: $phoneNumber");
    print("Cuisine Type: $cuisine");
    print("Opening Hours:");
    for (var hour in openingHours) {
      print(hour);
    }
  }

  // Method to update the phone number
  void updatePhoneNumber(String newPhoneNumber) {
    phoneNumber = newPhoneNumber;
    print("Phone number updated to: $phoneNumber");
  }

  // Method to add a new opening hour
  void addOpeningHour(String newHour) {
    openingHours.add(newHour);
    print("New opening hour added: $newHour");
  }

  // Method to remove an opening hour
  void removeOpeningHour(String hourToRemove) {
    openingHours.remove(hourToRemove);
    print("Opening hour removed: $hourToRemove");
  }
}

void main() {
  // Create a new restaurant profile
  RestaurantProfile myRestaurant = RestaurantProfile(
    name: "Gift Atim",
    address: "45 Bukoto Street",
    phoneNumber: "+256 734 567 890",
    cuisine: "Italian",
    openingHours: [
      "Monday - Friday: 9:00 AM - 9:00 PM",
      "Saturday - Sunday: 10:00 AM - 10:00 PM"
    ],
  );

  // Display the restaurant profile
  myRestaurant.displayProfile();

  // Updating the phone number
  myRestaurant.updatePhoneNumber("+1 234 567 891");

  // Adding a new opening hour
  myRestaurant.addOpeningHour("Holidays: 10:00 AM - 8:00 PM");

  // Removing an opening hour
  myRestaurant.removeOpeningHour("Monday - Friday: 9:00 AM - 9:00 PM");

  // Display the updated restaurant profile
  print("\nUpdated Restaurant Profile:");
  myRestaurant.displayProfile();
}
