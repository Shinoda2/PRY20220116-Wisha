import 'package:cloud_firestore/cloud_firestore.dart';

class Medicine {
  final int? stock;
  final String? nombre;
  final String? imagen;

  Medicine({
    this.stock,
    this.nombre,
    this.imagen,
  });

  factory Medicine.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Medicine(
      stock: data?['stock'],
      nombre: data?['nombre'],
      imagen: data?['imagen'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (stock != null) "stock": stock,
      if (nombre != null) "nombre": nombre,
      if (imagen != null) "imagen": imagen,
    };
  }
}
