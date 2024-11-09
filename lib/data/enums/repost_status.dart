enum ReportStatus{
  Created,
  InProgress,
  Resolved,
  Closed,
  Rejected,
  another,
}

extension RepostStatusName on ReportStatus{
  String getName(){
    switch(this){
      case ReportStatus.Created:
        return "Создана";
      case ReportStatus.InProgress:
        return "В процессе выполнения";
      case ReportStatus.Resolved:
        return "Решена";
      case ReportStatus.Closed:
        return "Закрыта после проверки";
      case ReportStatus.Rejected:
        return "Проблема отклонена";
      default:
        return "";
    }
  }
}