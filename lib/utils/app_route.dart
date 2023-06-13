import 'package:consume_apii/models/post.dart';
import 'package:consume_apii/pages/add_post_page.dart';
import 'package:consume_apii/pages/homepage.dart';
import 'package:consume_apii/pages/postpage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Approutes {
  static const home = "home";
  static const post = "post";
  static const addPost = "tambah-post";
  static const hapusPost = "hapus-post";

  static Page _homePageBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: HomePage());
  }

  static Page _postPageBuilder(BuildContext context, GoRouterState state) {
    return MaterialPage(
        child: PostPage(
      post: state.extra as Post,
    ));
  }

  static Page _addPostPageBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: AddPostPage());
  }

  static Page _editPostPageBuilder(BuildContext context, GoRouterState state) {
    return MaterialPage(
        child: AddPostPage(
      post: state.extra as Post,
    ));
  }

  static GoRouter goRouter = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homePageBuilder,
        routes: [
          GoRoute(
            name: post,
            path: "post",
            pageBuilder: _postPageBuilder,
          ),
          GoRoute(
            name: addPost,
            path: "tambah-post",
            pageBuilder: _addPostPageBuilder,
          ),
          GoRoute(
            name: editPost,
            path: "hapus-post",
            pageBuilder: _editPostPageBuilder,
          ),
        ],
      ),
    ],
  );
}
