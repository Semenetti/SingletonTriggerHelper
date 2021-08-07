public with sharing class SingletonTriggerHelper {
  private static Boolean isFirstTimeExecution = true;

  public static void AfterInsert(List<Account> newAcc) {
    if (isFirstTimeExecution) {
      System.debug('First run of Trigger');
      isFirstTimeExecution = false;
    } else {
      System.debug('You are trying to run trigger more than one time');
    }
  }
}
