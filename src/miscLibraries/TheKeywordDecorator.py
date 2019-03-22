from robot.api.deco import keyword
from robot.api import logger


@keyword("The user has requested for a refund")
def user_request_full_refund():
    logger.console("THE USER HAS REQUESTED FOR A FULL REFUND")


def the_order_should_be_refunded_fully():
    logger.console("THE ORDER IS REFUNDED")