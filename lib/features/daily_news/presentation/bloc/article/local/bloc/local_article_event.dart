part of 'local_article_bloc.dart';

abstract class LocalArticleEvent extends Equatable {
  final ArticleEntity? article;
  const LocalArticleEvent({this.article});

  @override
  List<Object> get props => [article!];
}

class GetSavedArticles extends LocalArticleEvent {
  const GetSavedArticles();
}

class RemoveArticles extends LocalArticleEvent {
  const RemoveArticles(ArticleEntity article) : super(article: article);
}

class SaveArticles extends LocalArticleEvent {
  const SaveArticles(ArticleEntity article) : super(article: article);
}
