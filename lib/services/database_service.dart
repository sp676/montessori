import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:montessori/models/child.dart';
class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createChild(String name, int age) async {
    try {
      // Create a new document in the "children" collection
      await _firestore.collection('children').add({
        'name': name,
        'age': age,
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error creating child: $e');
      }
      rethrow;
    }
  }

  Stream<List<Child>> getChildList() {
    // Stream the list of children from the "children" collection
    return _firestore.collection('children').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Child(
          id: doc.id,
          name: doc['name'],
          age: doc['age'],
        );
      }).toList();
    });
  }

  Future<void> updateChildAge(String childId, int newAge) async {
    try {
      // Update the age of a child in the "children" collection
      await _firestore
          .collection('children')
          .doc(childId)
          .update({'age': newAge});
    } catch (e) {
      if (kDebugMode) {
        print('Error updating child age: $e');
      }
      rethrow;
    }
  }

  Future<void> deleteChild(String childId) async {
    try {
      // Delete a child from the "children" collection
      await _firestore.collection('children').doc(childId).delete();
    } catch (e) {
      if (kDebugMode) {
        print('Error deleting child: $e');
      }
      rethrow;
    }
  }
}
