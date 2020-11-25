import sys
from wheels import convertDataToJSON, pinJSONtoIPFS, initContract, w3

from pprint import pprint

wheels = initContract()


def createAlterationReport():
    time = input("Date of the alteration: ")
    description = input("Description of the alteration: ")
    token_id = int(input("Token ID: "))

    json_data = convertDataToJSON(time, description)
    report_uri = pinJSONtoIPFS(json_data)

    return token_id, report_uri


def reportAlteration(token_id, report_uri):
    tx_hash = wheels.functions.reportAlteration(token_id, report_uri).transact(
        {"from": w3.eth.accounts[0]}
    )
    receipt = w3.eth.waitForTransactionReceipt(tx_hash)
    return receipt


def getAlterationReports(token_id):
    alteration_filter = wheels.events.Alteration.createFilter(
        fromBlock="0x0", argument_filters={"token_id": token_id}
    )
    return alteration_filter.get_all_entries()


# sys.argv is the list of arguments passed from the command line
# sys.argv[0] is always the name of the script
# sys.argv[1] is the first argument, and so on
# For example:
#        sys.argv[0]        sys.argv[1]    sys.argv[2]
# python alteration.py        report
# python alteration.py        get            1

def main():
    if sys.argv[1] == "report":
        token_id, report_uri = createAlterationReport()

        receipt = reportAlteration(token_id, report_uri)

        pprint(receipt)
        print("Report IPFS Hash:", report_uri)

    if sys.argv[1] == "get":
        token_id = int(sys.argv[2])

        file = wheels.functions.files(token_id).call()
        reports = getAlterationReports(token_id)

        pprint(reports)
        print("FILE_ID", file[0], "has been in",file[1], "alteration.")


main()
