import 'dart:async';
import 'dart:ffi';

import 'package:cigi/models/model.dart';
import 'package:cigi/shared/shared.dart';
import 'package:cigi/ui/pages/login/login.dart';
import 'package:cigi/ui/pages/pages.dart';
import 'package:cigi/ui/pages/testing_login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_services.dart';
part 'user_service.dart';
