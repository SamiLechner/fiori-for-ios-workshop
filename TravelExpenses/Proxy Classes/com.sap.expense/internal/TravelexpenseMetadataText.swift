// # Proxy Compiler 18.3.1-fe2cc6-20180517

import Foundation
import SAPOData

internal class TravelexpenseMetadataText {
    internal static let xml: String = "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?><edmx:Edmx Version=\"1.0\" xmlns:edmx=\"http://schemas.microsoft.com/ado/2007/06/edmx\"><edmx:DataServices xmlns:m=\"http://schemas.microsoft.com/ado/2007/08/dataservices/metadata\" m:DataServiceVersion=\"2.0\"><Schema Namespace=\"codejam.saptravelexpense.services\" xmlns:d=\"http://schemas.microsoft.com/ado/2007/08/dataservices\" xmlns:m=\"http://schemas.microsoft.com/ado/2007/08/dataservices/metadata\" xmlns=\"http://schemas.microsoft.com/ado/2008/09/edm\"><EntityType Name=\"ExpenseReportItemType\"><Key><PropertyRef Name=\"REPORTID\" /></Key><Property Name=\"REPORTID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"REPORTNAME\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"REPORTSTART\" Type=\"Edm.DateTime\" /><Property Name=\"REPORTEND\" Type=\"Edm.DateTime\" /><Property Name=\"REPORTLOCATION\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"REPORTSTATUSID\" Type=\"Edm.String\" MaxLength=\"16\" /><NavigationProperty Name=\"expenseItems\" Relationship=\"codejam.saptravelexpense.services.ExpenseItemAssocType\" FromRole=\"ExpenseReportItemPrincipal\" ToRole=\"ExpenseItemDependent\" /><NavigationProperty Name=\"reportStatus\" Relationship=\"codejam.saptravelexpense.services.ReportStatusAssocType\" FromRole=\"ExpenseReportItemDependent\" ToRole=\"ReportStatusPrincipal\" /></EntityType><EntityType Name=\"ExpenseItemType\"><Key><PropertyRef Name=\"REPORTID\" /><PropertyRef Name=\"ITEMID\" /></Key><Property Name=\"REPORTID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"ITEMID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"EXPENSETYPEID\" Type=\"Edm.String\" MaxLength=\"16\" /><Property Name=\"ITEMDATE\" Type=\"Edm.DateTime\" /><Property Name=\"AMOUNT\" Type=\"Edm.Decimal\" Precision=\"10\" Scale=\"2\" /><Property Name=\"VENDOR\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"LOCATION\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"CURRENCYID\" Type=\"Edm.String\" MaxLength=\"16\" /><Property Name=\"NOTES\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"PAYMENTTYPEID\" Type=\"Edm.String\" MaxLength=\"16\" /><NavigationProperty Name=\"paymentType\" Relationship=\"codejam.saptravelexpense.services.PaymentTypeAssocType\" FromRole=\"ExpenseItemDependent\" ToRole=\"PaymentPrincipal\" /><NavigationProperty Name=\"expenseType\" Relationship=\"codejam.saptravelexpense.services.ExpenseTypeAssocType\" FromRole=\"ExpenseItemDependent\" ToRole=\"ExpensePrincipal\" /><NavigationProperty Name=\"currency\" Relationship=\"codejam.saptravelexpense.services.CurrencyTypeAssocType\" FromRole=\"ExpenseItemDependent\" ToRole=\"CurrencyPrincipal\" /></EntityType><EntityType Name=\"ReservationItemType\"><Key><PropertyRef Name=\"RESERVATIONID\" /></Key><Property Name=\"RESERVATIONID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"RESERVATIONTITLE\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"CONFIRMATION\" Type=\"Edm.String\" MaxLength=\"16\" /><Property Name=\"RESERVATIONDATE\" Type=\"Edm.DateTime\" /><Property Name=\"RESERVATIONTYPEID\" Type=\"Edm.String\" MaxLength=\"16\" /><Property Name=\"LOCATION\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"TRIPID\" Type=\"Edm.String\" MaxLength=\"36\" /><NavigationProperty Name=\"reservationType\" Relationship=\"codejam.saptravelexpense.services.ReservationTypeAssocType\" FromRole=\"ReservationItemDependent\" ToRole=\"ReservationPrincipal\" /></EntityType><EntityType Name=\"TripItemType\"><Key><PropertyRef Name=\"TRIPID\" /></Key><Property Name=\"TRIPID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"DESCRIPTION\" Type=\"Edm.String\" MaxLength=\"64\" /><NavigationProperty Name=\"reservations\" Relationship=\"codejam.saptravelexpense.services.ReservationAssocType\" FromRole=\"TripItemPrincipal\" ToRole=\"ReservationItemDependent\" /></EntityType><EntityType Name=\"ReportStatusType\"><Key><PropertyRef Name=\"REPORTSTATUSID\" /></Key><Property Name=\"REPORTSTATUSID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"16\" /><Property Name=\"DESCRIPTION\" Type=\"Edm.String\" MaxLength=\"64\" /></EntityType><EntityType Name=\"ExpenseType\"><Key><PropertyRef Name=\"EXPENSETYPEID\" /></Key><Property Name=\"EXPENSETYPEID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"16\" /><Property Name=\"DESCRIPTION\" Type=\"Edm.String\" MaxLength=\"64\" /></EntityType><EntityType Name=\"CurrencyType\"><Key><PropertyRef Name=\"CURRENCYID\" /></Key><Property Name=\"CURRENCYID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"16\" /><Property Name=\"DESCRIPTION\" Type=\"Edm.String\" MaxLength=\"64\" /></EntityType><EntityType Name=\"ReservationType\"><Key><PropertyRef Name=\"RESERVATIONTYPEID\" /></Key><Property Name=\"RESERVATIONTYPEID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"16\" /><Property Name=\"DESCRIPTION\" Type=\"Edm.String\" MaxLength=\"64\" /></EntityType><EntityType Name=\"PaymentType\"><Key><PropertyRef Name=\"PAYMENTTYPEID\" /></Key><Property Name=\"PAYMENTTYPEID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"16\" /><Property Name=\"DESCRIPTION\" Type=\"Edm.String\" MaxLength=\"64\" /></EntityType><Association Name=\"ExpenseItemAssocType\"><End Type=\"codejam.saptravelexpense.services.ExpenseReportItemType\" Role=\"ExpenseReportItemPrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ExpenseItemType\" Role=\"ExpenseItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"ExpenseReportItemPrincipal\"><PropertyRef Name=\"REPORTID\"/></Principal><Dependent Role=\"ExpenseItemDependent\"><PropertyRef Name=\"REPORTID\"/></Dependent></ReferentialConstraint></Association><Association Name=\"ReportStatusAssocType\"><End Type=\"codejam.saptravelexpense.services.ReportStatusType\" Role=\"ReportStatusPrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ExpenseReportItemType\" Role=\"ExpenseReportItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"ReportStatusPrincipal\"><PropertyRef Name=\"REPORTSTATUSID\"/></Principal><Dependent Role=\"ExpenseReportItemDependent\"><PropertyRef Name=\"REPORTSTATUSID\"/></Dependent></ReferentialConstraint></Association><Association Name=\"PaymentTypeAssocType\"><End Type=\"codejam.saptravelexpense.services.PaymentType\" Role=\"PaymentPrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ExpenseItemType\" Role=\"ExpenseItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"PaymentPrincipal\"><PropertyRef Name=\"PAYMENTTYPEID\"/></Principal><Dependent Role=\"ExpenseItemDependent\"><PropertyRef Name=\"PAYMENTTYPEID\"/></Dependent></ReferentialConstraint></Association><Association Name=\"ExpenseTypeAssocType\"><End Type=\"codejam.saptravelexpense.services.ExpenseType\" Role=\"ExpensePrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ExpenseItemType\" Role=\"ExpenseItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"ExpensePrincipal\"><PropertyRef Name=\"EXPENSETYPEID\"/></Principal><Dependent Role=\"ExpenseItemDependent\"><PropertyRef Name=\"EXPENSETYPEID\"/></Dependent></ReferentialConstraint></Association><Association Name=\"CurrencyTypeAssocType\"><End Type=\"codejam.saptravelexpense.services.CurrencyType\" Role=\"CurrencyPrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ExpenseItemType\" Role=\"ExpenseItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"CurrencyPrincipal\"><PropertyRef Name=\"CURRENCYID\"/></Principal><Dependent Role=\"ExpenseItemDependent\"><PropertyRef Name=\"CURRENCYID\"/></Dependent></ReferentialConstraint></Association><Association Name=\"ReservationTypeAssocType\"><End Type=\"codejam.saptravelexpense.services.ReservationType\" Role=\"ReservationPrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ReservationItemType\" Role=\"ReservationItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"ReservationPrincipal\"><PropertyRef Name=\"RESERVATIONTYPEID\"/></Principal><Dependent Role=\"ReservationItemDependent\"><PropertyRef Name=\"RESERVATIONTYPEID\"/></Dependent></ReferentialConstraint></Association><Association Name=\"ReservationAssocType\"><End Type=\"codejam.saptravelexpense.services.TripItemType\" Role=\"TripItemPrincipal\" Multiplicity=\"1\"/><End Type=\"codejam.saptravelexpense.services.ReservationItemType\" Role=\"ReservationItemDependent\" Multiplicity=\"*\"/><ReferentialConstraint><Principal Role=\"TripItemPrincipal\"><PropertyRef Name=\"TRIPID\"/></Principal><Dependent Role=\"ReservationItemDependent\"><PropertyRef Name=\"TRIPID\"/></Dependent></ReferentialConstraint></Association><EntityContainer Name=\"travelexpense\" m:IsDefaultEntityContainer=\"true\"><EntitySet Name=\"ExpenseReportItem\" EntityType=\"codejam.saptravelexpense.services.ExpenseReportItemType\" /><EntitySet Name=\"ExpenseItem\" EntityType=\"codejam.saptravelexpense.services.ExpenseItemType\" /><EntitySet Name=\"ReservationItem\" EntityType=\"codejam.saptravelexpense.services.ReservationItemType\" /><EntitySet Name=\"TripItem\" EntityType=\"codejam.saptravelexpense.services.TripItemType\" /><EntitySet Name=\"ReportStatus\" EntityType=\"codejam.saptravelexpense.services.ReportStatusType\" /><EntitySet Name=\"Expense\" EntityType=\"codejam.saptravelexpense.services.ExpenseType\" /><EntitySet Name=\"Currency\" EntityType=\"codejam.saptravelexpense.services.CurrencyType\" /><EntitySet Name=\"Reservation\" EntityType=\"codejam.saptravelexpense.services.ReservationType\" /><EntitySet Name=\"Payment\" EntityType=\"codejam.saptravelexpense.services.PaymentType\" /><AssociationSet Name=\"ExpenseItemAssoc\" Association=\"codejam.saptravelexpense.services.ExpenseItemAssocType\"><End Role=\"ExpenseReportItemPrincipal\" EntitySet=\"ExpenseReportItem\"/><End Role=\"ExpenseItemDependent\" EntitySet=\"ExpenseItem\"/></AssociationSet><AssociationSet Name=\"ReportStatusAssoc\" Association=\"codejam.saptravelexpense.services.ReportStatusAssocType\"><End Role=\"ReportStatusPrincipal\" EntitySet=\"ReportStatus\"/><End Role=\"ExpenseReportItemDependent\" EntitySet=\"ExpenseReportItem\"/></AssociationSet><AssociationSet Name=\"PaymentTypeAssoc\" Association=\"codejam.saptravelexpense.services.PaymentTypeAssocType\"><End Role=\"PaymentPrincipal\" EntitySet=\"Payment\"/><End Role=\"ExpenseItemDependent\" EntitySet=\"ExpenseItem\"/></AssociationSet><AssociationSet Name=\"ExpenseTypeAssoc\" Association=\"codejam.saptravelexpense.services.ExpenseTypeAssocType\"><End Role=\"ExpensePrincipal\" EntitySet=\"Expense\"/><End Role=\"ExpenseItemDependent\" EntitySet=\"ExpenseItem\"/></AssociationSet><AssociationSet Name=\"CurrencyTypeAssoc\" Association=\"codejam.saptravelexpense.services.CurrencyTypeAssocType\"><End Role=\"CurrencyPrincipal\" EntitySet=\"Currency\"/><End Role=\"ExpenseItemDependent\" EntitySet=\"ExpenseItem\"/></AssociationSet><AssociationSet Name=\"ReservationTypeAssoc\" Association=\"codejam.saptravelexpense.services.ReservationTypeAssocType\"><End Role=\"ReservationPrincipal\" EntitySet=\"Reservation\"/><End Role=\"ReservationItemDependent\" EntitySet=\"ReservationItem\"/></AssociationSet><AssociationSet Name=\"ReservationAssoc\" Association=\"codejam.saptravelexpense.services.ReservationAssocType\"><End Role=\"TripItemPrincipal\" EntitySet=\"TripItem\"/><End Role=\"ReservationItemDependent\" EntitySet=\"ReservationItem\"/></AssociationSet></EntityContainer></Schema></edmx:DataServices></edmx:Edmx>\n"
}
