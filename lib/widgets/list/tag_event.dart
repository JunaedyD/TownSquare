import 'package:flutter/material.dart';

List<Widget> buildTags(List<String> intensities) {
  return intensities.map((intensity) {
    return Container(
      margin: const EdgeInsets.only(right: 8), // Add spacing between tags
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _getIntensityColor(
            intensity), // Use a function to determine tag color
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        intensity,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }).toList();
}

// Helper function to determine the color based on intensity
Color _getIntensityColor(String intensity) {
  switch (intensity.toLowerCase()) {
    case 'light':
      return Colors.blue;
    case 'medium':
      return Colors.purple;
    case 'high':
      return Colors.orange;
    case 'childcare':
      return Colors.green;
    default:
      return Colors.grey; // Default color for unknown tags
  }
}